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
use think\Validate;
use sms\Msg;
use function Qiniu\json_decode;
/* 个人中心 */
class InfoController extends UserBaseController
{

    public function _initialize()
    {
        parent::_initialize();
        
    }
    public function index(){
        $this->redirect(url('portal/index/trust'));
    }
    
    /**
     * 用户信息
     */
    public function info()
    {
       
       $user=session('user');
       $user['more']=json_decode($user['more'],true);
      
       $this->assign('user',$user);
       $this->assign('html_title','个人信息');
        return $this->fetch();
        
    }
    /**
     * 保存s用户信息
     */
    public function ajax_info()
    {
        $m_user=Db::name('user');
        $uid=session('user.id');
        $user= $user=session('user');
        $data0=$this->request->param('');
        $data=[];
        if($user['is_name']!=1){
            $data['user_nickname']=$data0['name']; 
            $data['user_login']=$data0['idcard'];
            import('idcard1',EXTEND_PATH);
            $idcard1= new \Idcard1();
            if(($idcard1->validation_filter_id_card($data['user_login']))!==true){
                $this->error('身份证号码非法!');
            }
            $tmp=$m_user->where(['user_login'=>['eq',$data['user_login']],'id'=>['neq',$uid]])->find();
            if(!empty($tmp)){
                $this->error('身份证号码已被占用');
            }
        }
        $more=json_decode($user['more'],true);
         
        $more['city'] = $data0['city'];
        $more['address']=$data0['address'];
        $more['qq']=$data0['qq'];
        $more['company_name']=$data0['company_name'];
        $more['company_address']=$data0['company_address'];
        $more['company_tel']=$data0['company_tel'];
       
        $data['more']=json_encode($more);
        $data['time']=time();
        $m_user->where('id',$uid)->update($data);
        $this->success('保存成功',url('portal/index/trust'));
        
    }
    /**
     * 紧急联系人
     */
    public function tels()
    {
        $user=session('user');
        $user['tels']=json_decode($user['more'],true);
        $this->assign('html_title','紧急联系人信息');
        $this->assign('tels',$user['tels']);
        return $this->fetch();
        
    }
    /**
     * 保存紧急联系人信息
     */
    public function ajax_tels()
    {
        $m_user=Db::name('user');
        $uid=session('user.id');
        $user=session('user');
        $data0=$this->request->param('');
        if(($data0['tel1']==''||$data0['name1']=='') && ($data0['tel2']==''||$data0['name2']=='')){
           $this->error('父母信息最少要填一项');
        }
        if($data0['tel3']==''||$data0['name3']=='' || $data0['tel4']==''||$data0['name4']==''){
            $this->error('朋友信息未填写完整');
        }
         
        $more=json_decode($user['more'],true);
        
        $more['tel1'] = $data0['tel1'];
        $more['name1']=$data0['name1'];
        $more['tel2']=$data0['tel2'];
        $more['name2']=$data0['name2'];
        $more['tel3'] = $data0['tel3'];
        $more['name3']=$data0['name3'];
        $more['tel4']=$data0['tel4'];
        $more['name4']=$data0['name4'];
        
        $data=['more'=>json_encode($more),'time'=>time()];
        $m_user->where('id',$uid)->update($data);
       
        $this->success('保存成功',url('portal/index/trust'));
        
    }
    /**
     * 紧急联系人
     */
    public function bank()
    {
        $user=session('user');
        $this->assign('html_title','添加银行卡');
        $this->assign('user',$user);
        return $this->fetch();
        
    }
    /**
     * 保存紧急联系人信息
     */
    public function ajax_bank()
    {
        $m_user=Db::name('user');
        $uid=session('user.id');
        $user=session('user');
        $data0=$this->request->param('');
        
        //验证身份证合法性
        if($user['is_name']!=1){
            $data['user_nickname']=$data0['name'];
            $data['user_login']=$data0['idcard'];
            import('idcard1',EXTEND_PATH);
            $idcard1= new \Idcard1();
            if(($idcard1->validation_filter_id_card($data['user_login']))!==true){
                $this->error('身份证号码非法!');
            }
            $tmp=$m_user->where(['user_login'=>['eq',$data['user_login']],'id'=>['neq',$uid]])->find();
            if(!empty($tmp)){
                $this->error('身份证号码已被占用');
            }
        }
        //验证银行卡合法性
        $data['bank_name']=$data0['bank_name'];
        $data['bank_card']=$data0['bank_card'];
        if(preg_match(config('reg_bank'), $data['bank_card'])!=1){
            $this->error('银行卡号错误');
        }
        $data['time']=time();
        $m_user->where('id',$uid)->update($data);
        
        $this->success('保存成功',url('portal/index/trust'));
        
    }
      
    /* 头像 */
    public function avatar(){
        $user=session('user');
       
        $this->assign('user',$user);
        $this->assign('html_title','更换头像');
        return $this->fetch();
    }
    /* 头像修改 */
    public function ajax_avatar(){
        set_time_limit(300);
        if(empty($_FILES['avatar1'])){
            $this->error('请选择图片');
        }
        $file=$_FILES['avatar1'];
       
        if($file['error']==0){
            if($file['size']>config('avatar_size')){
                $this->error('文件超出大小限制');
            }
            $avatar='avatar/'.md5(session('user.user_login')).'.jpg';
            $path=getcwd().'/upload/';
           
            $destination=$path.$avatar;
            if(move_uploaded_file($file['tmp_name'], $destination)){
                $avatar=zz_set_image($avatar,$avatar,100,100,6);
                if(is_file($path.$avatar)){ 
                    $this->success('上传成功',url('portal/index/info'));
                }else{
                    $this->error('头像修改失败');
                }
            }else{
                $this->error('文件上传失败');
            }
        }else{
            $this->error('文件传输失败');
        }
    }
     
     /* 实名认证 */
   /*  public function name(){
        
        $this->assign('html_title','实名认证');
        return $this->fetch();
    } */
    
    /* 实名认证 */
    /*
    public function ajax_name(){
        $data=$this->request->param('');
        $rules = [
            'psw' => 'require|number|length:6', 
            'name'=>'require|chs|min:2',
        ]; 
        
        $validate = new Validate($rules);
        $validate->message([
            'psw.require' => '密码为6位数字', 
            'psw.length'     => '密码为6位数字', 
            'name.chs'=>'请填写真实姓名',
            'name.min'=>'请填写真实姓名',
            'name.require'=>'请填写真实姓名',
        ]);
        if (!$validate->check($data)) {
            $this->error($validate->getError());
        }
         
        //判断密码
        $uid=session('user.id');
        $m_user=Db::name('user');
        $user=session('user');
        $result=zz_psw($user, $data['psw']);
        if(empty($result[0])){
            $this->error($result[1],$result[2]);
        }
        //已认证
        if($user['is_name']==1){
            session('user',$user);
            $this->error('已认证',url('user/info/index'));
        }
         
        //
        import('idcard1',EXTEND_PATH);
        $idcard1= new \Idcard1();
        if(($idcard1->validation_filter_id_card($data['idcard']))!==true){
            $this->error('身份证号码非法!');
        }
        $tmp=$m_user->where(['user_login'=>['eq',$data['idcard']],'id'=>['neq',$uid]])->find();
        if(!empty($tmp)){
            $this->error('身份证号码已被占用');
        }
        $data_user=['user_login'=>$data['idcard'],'user_nickname'=>$data['name'],'is_name'=>1];
        try { 
            $m_user->where('id',$uid)->update($data_user);
        } catch (\Exception $e) {
            $this->error('认证失败，请检查身份信息');
        }
       
        $this->success('信息提交成功，等待后台审核',url('user/info/index'));
        
    } */
    /* 修改密码*/
    public function psw(){
        $this->assign('html_title','修改密码');
        return $this->fetch();
    }
    /* 修改密码*/
    public function ajax_psw(){
        $data=$this->request->param('');
        //判断密码
        $uid=session('user.id');
        $m_user=Db::name('user');
        $user=$m_user->where('id',$uid)->find();
        $result=zz_psw($user, $data['psw0']);
        if(empty($result[0])){
            $this->error($result[1],$result[2]);
        }
        //修改密码
        if(preg_match(config('reg_psw'), $data['psw'])==1){
            $m_user->where('id',$uid)->update(['user_pass'=>cmf_password($data['psw'])]);
            $this->success('修改成功',url('user/info/setting'));
        }
        $this->error('修改失败');
        
    }
    /* 修改手机号*/
    public function mobile(){
        $this->assign('html_title','修改手机号');
        return $this->fetch();
    }
    /* 修改手机号*/
    public function ajax_mobile(){
        $data=$this->request->param('');
        $validate = new Validate([
             
            'code'  => 'require|number|length:6',
            'tel' => 'require|number|length:11',
            'psw' => 'require|number|length:6',
        ]);
        $validate->message([
            'tel.require'           => '手机号码错误',
            'tel.number'           => '手机号码错误',
            'tel.length'           => '手机号码错误', 
            'code.require'           => '短信验证码错误',
            'code.number'           => '短信验证码错误',
            'code.length'           => '短信验证码错误',
            'psw.require' => '密码为6位数字',
            'psw.number' => '密码为6位数字',
            'psw.length' => '密码为6位数字', 
        ]);
        
        $data = $this->request->post();
        if (!$validate->check($data)) {
            $this->error($validate->getError());
        } 
       
        if (preg_match(config('reg_mobile'), $data['tel'])) {
            $uid=session('user.id');
            $m_user=Db::name('user');
            //判断手机号
            $tmp=$m_user->where('mobile',$data['tel'])->find();
            if(!empty($tmp)){
                $this->error("您的手机号已存在");
            }
            //判断密码
            $user=$m_user->where('id',$uid)->find(); 
            $result=zz_psw($user, $data['psw']);
            if(empty($result[0])){
                $this->error($result[1],$result[2]);
            }
            //短信验证码
            $msg=new Msg();
            $res=$msg->verify($data['tel'],$data['code']);
            if($res!=='success'){
                $this->error($res);
            } 
            $m_user->where('id',$uid)->update(['mobile'=>$data['tel']]);
            
            $this->success('手机号更改成功',url('user/info/setting'));
        } else {
            $this->error("您输入的手机号格式错误");
        }
         
    }
    /* 身份证照片 */
    public function pic(){
        $user=session('user');
        $tmp='pic/'.md5($user['user_login']);
        $pic[1]=$tmp.'camera1.jpg';
        $pic[2]=$tmp.'camera2.jpg';
        $pic[3]=$tmp.'camera3.jpg';
        $this->assign('pic',$pic);
        $this->assign('html_title','身份认证');
        return $this->fetch();
    }
    /*  身份证照片 */
    public function ajax_pic(){
        if(session('user.is_name')==1){
            $this->error('已实名认证，不能修改身份照片',url('portal/index/trust'));
        }
        set_time_limit(300); 
        
        $avatar0='pic/'.md5(session('user.user_login'));
        $path=getcwd().'/upload/';
        foreach($_FILES as $k=>$v){
            $file=$v;
            $avatar=$avatar0.$k.'.jpg';
            if($file['error']==0){
                if($file['size']>config('avatar_size')){
                    $this->error('文件超出大小限制');
                } 
                $size=config($k);
                $destination=$path.$avatar;
                if(move_uploaded_file($file['tmp_name'], $destination)){
                    $avatar=zz_set_image($avatar,$avatar,$size['width'],$size['height'],6);
                    if(!is_file($path.$avatar)){
                        $this->error('图片处理失败');
                    } 
                }else{
                    $this->error('文件上传失败');
                }
            }else{
                if(!is_file($path.$avatar)){
                    $this->error('文件传输失败,请注意图片大小和网速');
                }  
            }
        }
        $this->redirect(url('portal/index/trust'));
         
    }
    public function setting(){
        $this->assign('user',session('user'));
        $this->assign('html_title','设置');
        return $this->fetch();
    }
    public function xuexin(){
        $user=session('user');
        
        $more=json_decode($user['more'],true);
       
        $more['xuexin']=empty($more['xuexin'])?'':$more['xuexin'];
        $more['xuexin_psw']=empty($more['xuexin_psw'])?'':$more['xuexin_psw'];
        $this->assign('xuexin',$more['xuexin']);
        $this->assign('xuexin_psw',$more['xuexin_psw']);
     
        return $this->fetch();
    }
    /**
     * 保存学信网信息
     */
    public function ajax_xuexin()
    {
        $m_user=Db::name('user');
         
        $data0=$this->request->param('');
        $user=session('user');
        $more0=json_decode($user['more'],true);
        $more0['xuexin']=$data0['xuexin'];
        $more0['xuexin_psw']=$data0['xuexin_psw'];
        $more=json_encode($more0);
        $m_user->where('id',$user['id'])->update(['more'=>$more,'time'=>time()]); 
        $this->success('保存成功',url('portal/index/trust'));
        
    }
    /**
     *运营商账号
     */
    public function record(){
        $user=session('user');
        $more=json_decode($user['more'],true);
        
        $more['mobile_psw']=empty($more['xuexin_psw'])?'':$more['xuexin_psw'];
        $this->assign('mobile',$user['mobile']);
        $this->assign('mobile_psw',$more['mobile_psw']);
        
        $this->assign('html_title','运营商评估');
        return $this->fetch();
    }
    /**
     * 运营商账号信息
     */
    public function ajax_record()
    {
        $m_user=Db::name('user'); 
        $psw=$this->request->param('psw');
        $user=session('user');
        $more0=json_decode($user['more'],true); 
        $more0['mobile_psw']=$psw;
        $more=json_encode($more0);
        $m_user->where('id',$user['id'])->update(['more'=>$more,'time'=>time()]);
        $this->success('保存成功',url('portal/index/trust')); 
    }
    
    /**
     * 信息提交检查
     */
    public function ajax_check()
    {
        $m_user=Db::name('user');
        
        $user=session('user');
        $user=session('user');
        $tmp=getcwd().'/upload/pic/'.md5($user['user_login']);
        $pic1=$tmp.'camera1.jpg';
        $pic3=$tmp.'camera3.jpg';
        $more=json_decode($user['more'],true);
        if(empty($user['user_login'])){
            $this->error('身份证号未填写');
        }elseif(empty($more['address'])){
            $this->error('个人信息未填写');
        }elseif(empty($more['tel3'])){
            $this->error('紧急联系人未填写');
        }elseif(empty($more['mobile_psw'])){
            $this->error('运营商密码未填写');
        }elseif(!is_file($pic1) || !is_file($pic3)){
            $this->error('身份证照片未上传');
        }elseif(empty($user['bank_card'])){
            $this->error('银行卡号未填写');
        }elseif(empty($more['xuexin_psw'])){
            $this->error('学信网信息未填写');
        }
        $m_user->where('id',$user['id'])->update(['time'=>time(),'is_time'=>1]);
        $this->success('已通知后台更新','');
    }
    
}
