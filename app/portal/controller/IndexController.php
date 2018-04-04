<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2017 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use think\Db;

class IndexController extends HomeBaseController
{
    private $token='zzoption';
    public function index()
    {
        $redirect=session('login_http_referer');
        if(empty($redirect)){
            $redirect=$this->request->server('HTTP_REFERER');
            if(empty($redirect)){
                $redirect=url('loan');
            }
            session('login_http_referer',$redirect);
        }
        
        //测试
        //$openid='oyHSG1Rq1YeiZ1o8OoqFyt4ri4yw';
        //检测网页授权
        $ua = strtolower($_SERVER['HTTP_USER_AGENT']);
        if( preg_match('/micromessenger/', $ua) && empty(session('user'))){
            // 公众号的id和secret
            $appid = config('wx_appid');
            $appsecret = config('wx_appsecret');
            
            $index=url('portal/index/index','',true,true);
            $index0= urlencode($index);
            
            if(empty($_GET["code"])){
                //开始只获取openid
                $scope='snsapi_base';
                $url0='https://open.weixin.qq.com/connect/oauth2/authorize?appid='.$appid.
                '&redirect_uri='.$index0.'&response_type=code&scope='.$scope.'&state=STATE#wechat_redirect';
                session('wx',['scope'=>$scope,'url0'=>$url0]);
                
                header("Location: ".$url0);
                exit('正在获取微信授权openid');
            }
            $code = $_GET["code"];
            //openid
            $url="https://api.weixin.qq.com/sns/oauth2/access_token?appid=".$appid.
            "&secret=".$appsecret."&code=".$code."&grant_type=authorization_code";
            $res =zz_curl($url);
            
            //获取到openid就查询用户信息，没有信息需要查询微信信息后注册，有信息到主页
            if(empty($res['openid'])){
                exit('微信信息获取失败，请退出重试');
            }else{
                session('wx.openid',$res['openid']);
                
                $user=Db::name('user')->where('openid',$res['openid'])->find();
                if(empty($user)){
                    //需要获取微信信息
                    $access_token = config('access_token');
                    $openid = $res['openid'];
                    $get_user_info_url='https://api.weixin.qq.com/cgi-bin/user/info?access_token='.$access_token.'&openid='.$openid.'&lang=zh_CN';
                    //获取到用户信息
                    $userinfo =zz_curl($get_user_info_url);
                    if(empty($userinfo['openid'])){
                        zz_log('user_info授权失败$$access_token'.$access_token);
                        session('wx',null); 
                        exit('微信授权信息获取失败，请退出重试');
                    }else{
                        session('wx',$userinfo);
                        session('redirect',null);
                        $this->redirect($redirect);
                    }
                }else{
                    session('user',$user);
                    $this->redirect($redirect);
                }
            }
            
        }
       
        $this->redirect($redirect);
        
    }
    /**
     * 前台借款页面
     */
    public function loan()
    {
         
        //banner
        $banners=Db::name('banner')->order('sort asc')->column('');
        //借款公告信息
        $papers=Db::name('paper')->where('status',4)->order('money_time desc')->limit(10)->column('');
        $msgs=[];
        foreach($papers as $k=>$v){
            $msgs[]='尾号'.substr($v['borrower_idcard'], -4).'，成功借款'.$v['money'].'元，耗时'.
                ceil(($v['money_time']-$v['insert_time'])/60).'分钟';
        }
        
        $this->assign('banners',$banners);
        $this->assign('msgs',$msgs);
        $this->assign('reply_types',config('reply_types'));
        $this->assign('paper_days',explode('-',config('paper_day')));
        $this->assign('paper_moneys',explode('-',config('paper_money')));
        $this->assign('html_page','loan');
        $this->assign('html_title','首页');
        return $this->fetch();
        
    }
    /**
     * 信用认证首页
     */
    public function trust()
    {
        
        $this->assign('html_title','信用中心');
        $this->assign('html_page','trust');
        return $this->fetch();
        
    }
    /**
     * 个人中心首页
     */
    public function info()
    {
        $user=session('user');
        if(empty($user)){
            $avatar='logo.png';
        }else{
            $avatar=$user['avatar'];
            $this->assign('name',empty($user['user_nickname'])?$user['mobile']:$user['user_nickname']);
        }
        $this->assign('avatar',$avatar);
        $this->assign('html_title','个人中心');
        $this->assign('html_page','info');
        return $this->fetch();
        
    }
   /*  cURL函数简单封装 */
    function https_request($url, $data = null)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        if (!empty($data)){
            curl_setopt($curl, CURLOPT_POST, 1);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        }
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $output = curl_exec($curl);
        curl_close($curl);
        return json_decode($output, true);
    }
    
    public function checkSignature()
    {
         
        $echoStr = $_GET["echostr"]; 
        // you must define TOKEN by yourself
        if (empty($this->token)) {
            throw new \Exception('TOKEN is not defined!');
        }
        
        $signature = $_GET["signature"];
        $timestamp = $_GET["timestamp"];
        $nonce = $_GET["nonce"];
        
        $token = $this->token;
        $tmpArr = array($token, $timestamp, $nonce);
        // use SORT_STRING rule
        sort($tmpArr, SORT_STRING);
        $tmpStr = implode( $tmpArr );
        $tmpStr = sha1( $tmpStr );
        
        if( $tmpStr == $signature ){
            echo $echoStr;
        }else{
            echo false;
        }
        exit();
    }
     
    
}
