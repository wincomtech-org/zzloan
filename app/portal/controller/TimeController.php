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
use think\db;
/*处理每日定时任务  */
class TimeController extends HomeBaseController
{
    /*处理每日定时任务，crontab每日0点01分执行  */
    public function time()
    {
        zz_log('每日任务开始','time.log');
        //
        $data_action=[];
        //获取凌晨0点时间
        $time=zz_get_time0();
        //24小时过期时间
        $time0=$time-86400;
        $time_day=trim(config('time_day'));
        //判断重复任务
        if(strtotime($time_day)===$time){
            zz_log('重复任务，结束','time.log');
           exit('重复任务，结束');
        }else{
            cmf_set_dynamic_config(['time_day'=>date('Y-m-d')]);
        }
        $ip=get_client_ip();
        set_time_limit(600);
        $db=config('database'); 
        $mysqli=new \mysqli($db['hostname'],$db['username'],$db['password'],$db['database'],$db['hostport']);
        $mysqli->set_charset($db['charset']);
         
        
        $m_user=Db::name('user');
        //1更新 了登录失败次数
        $rows=$m_user->where('login_fail','gt',0)->update(['login_fail'=>0]);
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'清空了登录失败次数'.$rows.'条',
        ];
        zz_log('清空了登录失败次数'.$rows.'条','time.log');
        
        $m_reply=Db::name('reply');
       /*  //2删除过期申请 
        $where_reply1=[
            'is_overtime'=>['eq',1],
            'update_time'=>['elt',$time0]
        ];
        $rows=$m_reply->where($where_reply1)->delete();
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'删除了过期申请'.$rows.'条',
        ];
        zz_log('删除了过期申请'.$rows.'条','time.log'); */
        
        //3更新过期申请
         
       /*  $where_reply2=[ 
            'is_overtime'=>['eq',0],
            'update_time'=>['elt',$time0]
        ];
        $rows=$m_reply->where($where_reply2)->update(['is_overtime'=>1,'update_time'=>$time]);
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'更新了过期申请'.$rows.'条',
        ];
        zz_log('更新了过期申请'.$rows.'条','time.log'); */
         
        
        //借款处理
        $m_paper=Db::name('paper');
       /*  //1先删除过期借款 
        $where_paper1=[
            'status'=>['eq',2],
            'update_time'=>['elt',$time0]
        ];
        $rows=$m_paper->where($where_paper1)->delete();
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'删除了过期借款'.$rows.'条',
        ];
        zz_log('删除了过期借款'.$rows.'条','time.log'); */
        
        //2借款逾期天数更新
        $rows=$m_paper->where('status',5)->setInc('overdue_day');
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'更新了借款逾期天数'.$rows.'条',
        ];
        zz_log('更新了借款逾期天数'.$rows.'条','time.log');
        
        
        
        //4更新用户逾期累计和今日到期为逾期
        //昨日到期的就是新的逾期
        $list_overdue1=$m_paper->field('borrower_id,money')->where(['status'=>3])->column('');
        
        $ids=[];
        foreach($list_overdue1 as $v){
            $ids[]=$v['borrower_id'];
        }
        if(!empty($ids)){
            $rows=$m_user->where(['id','in',$ids])->setInc('overdue');
        }else{
            $rows=0;
        }
        
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'更新了用户逾期累计'.$rows.'条',
        ];
        zz_log('更新了用户逾期累计'.$rows.'条','time.log');
        
        $rows=$m_paper->where('status',3)->update(['status'=>5,'overdue_day'=>1]);
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'更新今日到期为逾期'.$rows.'条',
        ];
        zz_log('更新今日到期为逾期'.$rows.'条','time.log');
        
        ////5更新还剩1天的借款今日到期 
        $rows=$m_paper->where(['status'=>4,'expire_day'=>1])->update(['status'=>3,'expire_day'=>0]);
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'更新了还剩1天的借款今日到期'.$rows.'条',
        ];
        zz_log('更新了还剩1天的借款今日到期'.$rows.'条','time.log');
        
         
        //6更新借款即将到期天数
        $rows=$m_paper->where('status',4)->setDec('expire_day');
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'更新了即将到期天数'.$rows.'条',
        ];
        zz_log('更新了即将到期天数'.$rows.'条','time.log');
        
        //7更新借款发起和借款不同意为过期
         
        /* $where_overtime=[
            'status'=>['in',[0,1]],
            'update_time'=>['elt',$time0],
        ];
        $rows=$m_paper->where($where_overtime)->update(['status'=>2,'update_time'=>$time]);
        $data_action[]=[
            'aid'=>1,
            'time'=>time(),
            'ip'=>$ip,
            'type'=>'system',
            'action'=>'更新借款发起和借款不同意为过期'.$rows.'条',
        ];
        zz_log('更新借款发起和借款不同意为过期'.$rows.'条','time.log'); */
        Db::name('action')->insertAll($data_action);
        zz_log('end','time.log');
        $mysqli->close();
       
       exit('执行结束');
    }
    /*定时获取微信的access_tocken，crontab每小时30分执行 */
    public function wx_token()
    {
        zz_log('定时获取微信的access_tocken开始','time.log');
        //
        $data_action=[];
        $appid = config('wx_appid');
        $appsecret = config('wx_appsecret');
        $token_time=config('token_time');
        //判断重复任务,1小时1次
        if((time()-$token_time)<3600){
            zz_log('重复任务，结束','time.log');
            exit('重复任务，结束');
        }else{
            $ip=get_client_ip();
            $data_action=[
                'aid'=>1,
                'time'=>time(),
                'ip'=>$ip,
                'type'=>'system',
                'action'=>'更新微信access_token',
            ];
            $url='https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid='.$appid.'&secret='.$appsecret;
            $res=zz_curl($url);
           
            if(!empty($res['access_token'])){
                cmf_set_dynamic_config(['access_token'=>$res['access_token']]);
                cmf_set_dynamic_config(['token_time'=>time()]);
                $data_action['action'].='成功';
                zz_log('获取access_token成功','time.log');
            }else{
                $data_action['action'].='失败';
                zz_log('获取access_token失败','time.log');
            }
            Db::name('action')->insert($data_action); 
           
            exit('执行结束');
        }
    }
     
}
