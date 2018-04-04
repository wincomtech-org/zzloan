<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2017 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: Powerless < wzxaini9@gmail.com>
// +----------------------------------------------------------------------
namespace app\user\controller;

use cmf\controller\UserBaseController;
use think\Db;

class PaperController extends UserBaseController
{

    public function _initialize()
    {
        parent::_initialize();
        
    }
    /* 借款申请 */
    public function ajax_send(){
        $user0=Db::name('user')->where('id',session('user.id'))->find();
        if(empty($user0['is_name'])){
            $this->error('请填写资料完成实名认证',url('portal/index/trust'));
        }
        $data0=$this->request->param();
        //已用额度+借款金额>总额度
        $user0['money1']=bcadd($user0['money1'],$data0['money'],2);
        if( $user0['money1']>$user0['money0']){
            $this->error('额度不足，不能借款,请提交资料提高额度',url('portal/index/trust'));
        }
       
        $time=time();
        $today=date('Ymd',$time);
        
        //借款信息
        $data=[
            'borrower_id'=>$user0['id'],
            'borrower_idcard'=>$user0['user_login'],
            'borrower_name'=>$user0['user_nickname'],
            'borrower_mobile'=>$user0['mobile'],
            'bank_name'=>$user0['bank_name'],
            'bank_card'=>$user0['bank_card'],
            'expire_day'=>$data0['day'], 
            'day'=>$data0['day'],
            'start_time'=>strtotime($today),
            'insert_time'=>$time,
            'update_time'=>$time,
            'rate'=>config('rate'),
            'money'=>$data0['money'], 
            'dsc'=>''
        ];
        $data['end_time']=$data['start_time']+$data['expire_day']*3600*24; 
        $data['real_money']=zz_get_money($data['money'], $data['rate'], $data['expire_day']);
        //判 格式
        if(preg_match(config('reg_psw'),$data0['psw'])!=1){
            $this->error('密码输入有误');
        }
        //判断金钱格式
        if(preg_match(config('reg_money'),$data['money'])!=1){
            $this->error('借款金额输入有误');
        }
        
        //比较密码
        $result=zz_psw($user0, $data0['psw']);
        if(empty($result[0])){
            $this->error($result[1],$result[2]);
        }
        $m_paper=Db::name('paper');
        
        // 信息保存 
        $data['oid']=$today.'-'.$user0['id'].'-'.time(); 
        Db::startTrans();
        try {
            $m_paper->insert($data); 
        } catch (\Exception $e) {
            Db::rollBack();
            $this->error('补借条失败，请重试!'.$e->getMessage());
        }
        
        Db::commit();
        $this->success('借款申请已经提交');
    }
    /* 借款记录 */
    public function lists(){
        $uid=session('user.id');
        
        $where=[
            'borrower_id'=>['eq',$uid], 
        ];
        
        $m_paper=Db::name('paper');
       
        $list=$m_paper->where($where)->order('status asc,expire_day asc,overdue_day asc,id desc')->column('');
       
        $list_old=Db::name('paper_old')->where($where)->order('overdue_day asc,id desc')->column('');
        
        $this->assign('list',$list); 
        $this->assign('list_old',$list_old);
        
        $this->assign('html_title','借款记录'); 
        return $this->fetch();
    }
    /* 还款记录 */
    public function replys(){
        $uid=session('user.id');
        
        $where=[
            'p.borrower_id'=>['eq',$uid],
        ];
       
        $m=Db::name('reply');
        $list= $m
        ->alias('r')
        ->field('r.*,p.money,p.start_time,p.end_time')
        ->join('paper p','p.oid=r.oid')
        ->where($where)
        ->order('r.id desc')
        ->select();
        $list_old= $m
        ->alias('r')
        ->field('r.*,p.money,p.start_time,p.end_time')
        ->join('paper_old p','p.oid=r.oid')
        ->where($where)
        ->order('r.id desc')
        ->select();
        
        $this->assign('list',$list);
        $this->assign('list_old',$list_old);
        
        $this->assign('html_title','还款记录');
        return $this->fetch();
    }
    
    /* 申请还款 */
    public function back(){
        $uid=session('user.id');
        $id=$this->request->param('id',0,'intval');
        $info=Db::name('paper')->where('id',$id)->find();
        if(empty($info['borrower_id']) || $info['borrower_id']!=$uid || $info['status']<=2){
            $this->error('借款信息错误',url('user/paper/lists'));
        }
        $info['final_money']=zz_get_money_overdue($info['real_money'], $info['money'], config('rate_overdue'), $info['overdue_day']);
        $this->assign('info',$info);
        $this->assign('ali',config('pay_ali'));
        $this->assign('bank',config('pay_bank'));
        return $this->fetch();
    }
    /*  还款 */
    public function ajax_back(){
        set_time_limit(300);
        $uid=session('user.id');
        $id=$this->request->param('id',0,'intval');
        $final_money=$this->request->param('final_money');
        $radio=$this->request->param('radio');
        $pays=[1=>'支付宝',2=>'银行卡'];
        $info=Db::name('paper')->where('id',$id)->find();
        if(empty($info['borrower_id']) || $info['borrower_id']!=$uid || $info['status']<=2){
            $this->error('借款信息错误',url('user/paper/lists'));
        }
        $info['final_money']=zz_get_money_overdue($info['real_money'], $info['money'], config('rate_overdue'), $info['overdue_day']);
        if($info['final_money']!=$final_money){
            $this->error('还款金额错误',url('user/paper/lists'));
        }
        if(empty($_FILES['camera4'])){
            $this->error('请上传图片');
        }
        $file=$_FILES['camera4']; 
        if($file['error']==0){
            if($file['size']>config('avatar_size')){
                $this->error('文件超出大小限制');
            }
            $avatar='back/'.time().'-'.$id.'.jpg';
            $path=getcwd().'/upload/';
          
            $destination=$path.$avatar;
            if(move_uploaded_file($file['tmp_name'], $destination)){ 
                if(!is_file($path.$avatar)){
                    $this->error('图片处理失败');
                }
            }else{
                $this->error('文件上传失败');
            }
        }else{
            $this->error('文件传输失败,请注意图片大小和网速');
        }
        
        $data=[
            'oid'=>$info['oid'],
            'insert_time'=>time(),
            'update_time'=>time(),
            'final_money'=>$info['final_money'], 
            'pic'=>$avatar,
            'pay'=>$pays[$radio],
        ];
        Db::name('reply')->insert($data);
        $this->redirect(url('user/paper/replys'));
        
    }
}
