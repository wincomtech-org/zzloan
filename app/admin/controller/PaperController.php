<?php
 
namespace app\admin\controller;

 
use cmf\controller\AdminBaseController; 
use think\Db; 
/**
 * Class PaperController
 * @package app\admin\controller
 *
 * @adminMenuRoot(
 *     'name'   =>'借款管理',
 *     'action' =>'default',
 *     'parent' =>'',
 *     'display'=> true,
 *     'order'  => 10,
 *     'icon'   =>'',
 *     'remark' =>'借款管理'
 * )
 *
 */
class PaperController extends AdminBaseController
{
    private $m;
    private $order;
    private $paper_status;
    public function _initialize()
    {
        parent::_initialize();
        $this->m=Db::name('paper');
        $this->order='id desc';
        $this->paper_status=config('paper_status');
        $this->assign('flag','未完成借款');
        
        $this->assign('paper_status', $this->paper_status);
    }
     
    /**
     * 未完成借款列表
     * @adminMenu(
     *     'name'   => '未完成借款列表',
     *     'parent' => 'default',
     *     'display'=> true,
     *     'hasView'=> true,
     *     'order'  => 10,
     *     'icon'   => '',
     *     'remark' => '未完成借款列表',
     *     'param'  => ''
     * )
     */
    public function index()
    { 
        $m=$this->m;
        $where=[];
        $data=$this->request->param();
        if(isset($data['status']) &&  $data['status']!='-1'){
            $where['status']=$data['status'];
        }else{
            $data['status']='-1';
        }
        
        if(empty($data['borrower_idcard'])){
            $data['borrower_idcard']='';
        }else{
            $where['borrower_idcard']=$data['borrower_idcard'];
        }
       
        $list= $m->where($where)->order($this->order)->paginate(10);
       
        // 获取分页显示
        $page = $list->render(); 
       //得到所有管理员
       
        $this->assign('page',$page);
        $this->assign('list',$list); 
        $this->assign('data',$data); 
        $this->assign('paper_status', config('paper_status0'));
        return $this->fetch();
    }
    /**
     * 未完成借款查看
     * @adminMenu(
     *     'name'   => '未完成借款查看',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10,
     *     'icon'   => '',
     *     'remark' => '未完成借款查看',
     *     'param'  => ''
     * )
     */
    public function edit()
    {
        $m=$this->m;
        
        $id=$this->request->param('id',0,'intval');
        $info=$m->where('id',$id)->find();
        if(empty($info)){
            $this->error('此借款不存在');
        }
        $this->assign('info',$info); 
        return $this->fetch();
    }
    /**
     * 未完成借款编辑执行
     * @adminMenu(
     *     'name'   => '未完成借款编辑执行',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10,
     *     'icon'   => '',
     *     'remark' => '未完成借款编辑执行',
     *     'param'  => ''
     * )
     */
    public function editPost()
    {
        $tmp=zz_check_time();
        if($tmp[0]===1){
            $this->error($tmp[1]);
        }
        $m=$this->m;
        
        $data=$this->request->param();
        $where=['id'=>$data['id']];
        $info=$m->where($where)->find();
        if(empty($info)){
            $this->error('借款不存在，请刷新页面');
        }
        if($info['status']>0){
            $this->error('不能修改借款信息');
        }
        if($data['status']!=1 && $data['status']!=4){
            $this->error('信息错误');
        }
        $statuss=$this->paper_status;
        $data['update_time']=time();
        
        $data_action=[
            'aid'=>session('ADMIN_ID'),
            'type'=>'paper',
            'time'=>$data['update_time'],
            'ip'=>get_client_ip(),
            'action'=>'对借款'.$info['oid'].'处理结果为'.$statuss[$data['status']],
            
        ];
       
        
        
        //借款成功增加借款信息，借款失败要返回用户余额
        $m_user=Db::name('user');
        $user=$m_user->where('id',$info['borrower_id'])->find();
        //已用额度+借款金额>总额度
        $user['money1']=bcadd($user['money1'],$info['money'],2);
        if( $user['money1']>$user['money0']){
            $this->error('额度不足，不能借款');
        }
        if($data['status']==4){
            $data['money_time']=time();
            $data['start_time']=zz_get_time0();
            $data['end_time']=$data['start_time']+$info['expire_day']*3600*24; 
            $data_user=[
                'money1'=>$user['money1'],
                'borrow_num'=>$user['borrow_num']+1,
                'borrow_money'=>bcadd($user['borrow_money'],$info['money'],2),
            ];
            
        } 
        Db::startTrans();
        $m_user->where('id',$info['borrower_id'])->update($data_user);
        $m->where('id',$data['id'])->update($data);
        Db::name('action')->insert($data_action);
        Db::commit();
        //发送wx通知
        if($data['status']==4){
            $url0=url('user/paper/lists','',true,true);
            $type='msg_send';
            $data=[
                '你的借款申请审核通过了',
                $info['money'],
                date('Y-m-d',$data['start_time']),
                date('Y-m-d',$data['end_time']),
                '借款即将到账，请及时查验，点击进入'
            ];
            //获取openid 
            $res=zz_wxmsg($user['openid'], $url0, $data, $type);
            if($res['errcode']!=0){ 
                zz_log('用户'.$info['borrower_name'].'催款信息发送失败'.$res['errcode'].'-'.$res['errmsg'],'wx.log');
            }
        } 
        $this->success('保存成功！',url('index'));
         
    }
    /**
     * 一键催款
     * @adminMenu(
     *     'name'   => '一键催款',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10,
     *     'icon'   => '',
     *     'remark' => '一键催款',
     *     'param'  => ''
     * )
     */
    public function msg(){
        $tmp=zz_check_time();
        if($tmp[0]===1){
            $this->error($tmp[1]);
        }
        
        $date0=config('msg_date');
        $date=date('Y-m-d');
       /*  if($date==$date0){
            $this->error('每天只能催款一次');
        }else{
            cmf_set_dynamic_config(['msg_date'=>$date]);
        } */
        $where=[ 
            'status'=>['in',[3,5]],
        ];
        $list=Db::name('paper')->where($where)->column('');
        if(empty($list)){
            $this->error('没有到期和逾期的借款用户');
        }
        $ok=0;
        $fail='';
        $url0=url('user/paper/lists','',true,true);
        $type='msg_back';
        $m_user=Db::name('user');
        foreach($list as $k=>$v){
            $data=[
                '你的借款到期了', 
                $v['money'],
                date('Y-m-d',$v['start_time']),
                date('Y-m-d',$v['end_time']),
                '请尽快还款，点击进入'
            ];
            //获取openid
            $borrower=$m_user->where('id',$v['borrower_id'])->find();
            $res=zz_wxmsg($borrower['openid'], $url0, $data, $type);
            if($res['errcode']==0){
                $ok++;
            }else{
                $fail.=',用户'.$v['borrower_name'];
                zz_log('用户'.$v['borrower_name'].'催款信息发送失败'.$res['errcode'].'-'.$res['errmsg'],'wx.log');
            }
        }
        if($fail!=''){
            $fail.='催款信息发送失败';
        }
        $this->error('发送催款通知'.$ok.'条'.$fail);
    }
    
}
