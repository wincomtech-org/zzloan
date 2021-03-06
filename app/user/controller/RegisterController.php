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

use cmf\controller\HomeBaseController;
use think\Validate;
use think\Db;
 
use sms\Msg;

class RegisterController extends HomeBaseController
{

    /**
     * 前台用户注册
     */
    public function index()
    {
         
        if (cmf_is_user_login()) {
            $this->redirect(url('user/index/index'));
        } else { 
           $this->redirect(url('register'));
        }
    }
    /**
     * 前台用户注册页面
     */
    public function register()
    {
         if(empty(session('wx.openid'))){ 
            $this->error('请通过微信公众号注册',url('portal/index/index'));
        } 
        $this->assign('html_title','注册');
       return $this->fetch();
         
    }
    /**
     * 发送验证码
     */
    public function sendmsg()
    { 
        $phone=$this->request->param('tel',0);
        $type=$this->request->param('type','reg'); 
        $pic=$this->request->param('pic',0); 
        $idcard=$this->request->param('idcard','0');
        
        $tmp=Db::name('user')->where('mobile',$phone)->find(); 
        switch ($type){
            //注册
            case 'reg':
                if (!cmf_captcha_check($pic)) {
                    $this->error('图片验证码错误');
                }
                if(!empty($tmp)){
                    $this->error('该手机号已被使用');
                }
                import('idcard1',EXTEND_PATH);
                $idcard=$this->request->param('idcard','0');
                $idcard1= new \Idcard1();
                if(($idcard1->validation_filter_id_card($idcard))!==true){
                    $this->error('身份证号码非法!');
                }
                $tmp1=Db::name('user')->where('user_login',$idcard)->find();
                if(!empty($tmp)){
                    $this->error('身份证号已被使用');
                }
                break;
            //找回密码
            case 'find':
                if (!cmf_captcha_check($pic)) {
                    $this->error('图片验证码错误');
                }
                if(empty($tmp)){
                    $this->error('该手机号不存在');
                }
                if($tmp['user_login']!=$idcard){
                    $this->error('身份证号与手机号不符');
                }
                break;
            //换手机号
            case 'mobile':
                if(!empty($tmp)){
                    $this->error('该手机号已被使用');
                }
                //判断密码
                $psw=$this->request->param('psw',0);
                $user=Db::name('user')->where('id',session('user.id'))->find();
                $result=zz_psw($user, $psw);
                if(empty($result[0])){
                    $this->error($result[1],$result[2]);
                }
                break;
            default:
                 $this->error('未知操作');
                 
        }
        $msg=new Msg();
         
        $this->error($msg->reg($phone,rand(100000,999999)));
    }
    
    /**
     * 前台用户注册提交
     */
    public function ajaxRegister()
    { 
         
            $rules = [ 
                'user_pass' => 'require|number|length:6', 
                'mobile'=>'require|number|length:11', 
                
            ]; 
            $redirect                = url('user/index/index');
            $validate = new Validate($rules);
            $validate->message([ 
                'user_pass.require' => '密码不能为空', 
                'user_pass.length'     => '密码为6位数字',
                'mobile.require' => '手机号码不能为空',
                'mobile.length'     => '手机号码格式错误',
                 
            ]);
          
            $data1 = $this->request->post();
            if (!cmf_captcha_check($data1['pic'])) {
                $this->error('图片验证码错误');
            }
            $data=[
                'user_login'=>$data1['idcard'], 
                'user_pass'=>$data1['password'],
                'mobile'=>$data1['tel'], 
                'last_login_ip'   => get_client_ip(0, true),
                'create_time'     => time(),
                'last_login_time' => time(),
                'user_status'     => 1,  
                "user_type"       => 2,//会员 
                'is_name'=>0,   //默认不实名
            ];
            if (!$validate->check($data)) {
                $this->error($validate->getError());
            }
             
            //验证码
            $msg=new Msg();
            $sms=$msg->verify($data['mobile'],$data1['sms']);
            if($sms!='success'){
                $this->error($sms);
            }
            import('idcard1',EXTEND_PATH);
            $idcard1= new \Idcard1();
            if(($idcard1->validation_filter_id_card($data['user_login']))!==true){
                $this->error('身份证号码非法!');
            }
            if(preg_match(config('reg_mobile'), $data['mobile'])!=1){
                $this->error('手机号码错误');
            }
            
            $data['user_pass'] = cmf_password($data['user_pass']);
            $result = $this->validate($data, 'User');
            if ($result !== true) {
                $this->error($result);
            } else { 
               //保存微信头像为本地
                $wx=session('wx');
                //定义头像名,有微信头像就获取，没有就指定默认
                $data['avatar']='avatar/'.md5($data['user_login']).'.jpg';
                zz_set_image('self.jpg', $data['avatar'],100,100,6); 
                $data['openid']=$wx['openid'];
                $result             = Db::name('user')->insertGetId($data);
                if ($result !== false) {
                    $data   = Db::name("user")->where('id', $result)->find();
                    cmf_update_current_user($data);
                    session('wx',null);
                    $this->success("注册成功！",url('portal/index/info'));
                } else {
                    $this->error("注册失败！");
                }
            }
             
       
    }
    /* 下载网络文件到本地 */
    function download($url, $path = '/avatar/1.jpg')
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 30);
        $file = curl_exec($ch);
        curl_close($ch);
        //$filename = pathinfo($url, PATHINFO_BASENAME);
        $path=getcwd().'/upload/'.$path;
        $resource = fopen($path, 'a');
        fwrite($resource, $file);
        fclose($resource);
    }
}