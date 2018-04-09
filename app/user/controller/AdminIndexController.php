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

use cmf\controller\AdminBaseController;
use think\Db;

/**
 * Class AdminIndexController
 * @package app\user\controller
 *
 * @adminMenuRoot(
 *     'name'   =>'用户管理',
 *     'action' =>'default',
 *     'parent' =>'',
 *     'display'=> true,
 *     'order'  => 10,
 *     'icon'   =>'group',
 *     'remark' =>'用户管理'
 * )
 *
 * @adminMenuRoot(
 *     'name'   =>'用户组',
 *     'action' =>'default1',
 *     'parent' =>'user/AdminIndex/default',
 *     'display'=> true,
 *     'order'  => 10000,
 *     'icon'   =>'',
 *     'remark' =>'用户组'
 * )
 */
class AdminIndexController extends AdminBaseController
{

    public function _initialize()
    {
        parent::_initialize();
        
        $this->assign('name_status',[0=>'未认证',1=>'已认证']);
        $this->assign('time_status',[0=>'未提交更新',1=>'已提交更新']);
    }
    /**
     * 后台本站用户列表
     * @adminMenu(
     *     'name'   => '本站用户',
     *     'parent' => 'default1',
     *     'display'=> true,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '本站用户',
     *     'param'  => ''
     * )
     */
    public function index()
    {
        
        $where   = ['u.user_type'=>['eq',2]];
        $request = $this->request->param();
        $usersQuery = Db::name('user'); 
        //如果未选择推荐管理员
       
        if(empty($request['aid'])){
            $request['aid']=0;
        }else{ 
            $request['aid']=intval($request['aid']);
            $openids=Db::name('user_wx')->where('aid',$request['aid'])->column('openid');
            
                $where['u.openid'] = ['in',$openids];
            
        }
        if (empty($request['uid'])) {
            $request['uid']='';
        }else{
            $where['u.id'] = ['eq',intval($request['uid'])];
        }
        $keywordComplex = [];
        if (empty($request['keyword'])) {
            $request['keyword']='';
        }else{
            $keyword = $request['keyword'];
            $keywordComplex['u.user_login|u.user_nickname|u.mobile']    = ['eq', $keyword];
        }
       
       
        $list = $usersQuery 
        ->alias('u')
        ->join('cmf_user_wx wx','wx.openid=u.openid','left') 
        ->order("u.is_time desc,u.time desc,u.id desc")
        ->field('u.*,IFNULL(wx.aid,0) as aid')
        ->whereOr($keywordComplex)
        ->where($where)
        ->paginate(10);
       
        // 获取分页显示
        $page = $list->appends($request)->render();
        $admins=$usersQuery->where('user_type',1)->column('id,user_nickname');
        $this->assign('list', $list);
        $this->assign('page', $page);
        $this->assign('data', $request);
        $this->assign('admins0', $admins);
        $admins[0]='无推荐';
        $this->assign('admins', $admins);
        
        // 渲染模板输出
        return $this->fetch();
    }

    /**
     * 本站用户拉黑
     * @adminMenu(
     *     'name'   => '本站用户拉黑',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '本站用户拉黑',
     *     'param'  => ''
     * )
     */
    public function ban()
    {
        
        $id = $this->request->param('id', 0, 'intval');
        if ($id) {
            $result = Db::name("user")->where(["id" => $id, "user_type" => 2])->setField('user_status', 0);
            if ($result) {
                $this->success("会员拉黑成功！");
            } else {
                $this->error('会员拉黑失败,会员不存在,或者是管理员！');
            }
        } else {
            $this->error('数据传入失败！');
        }
    }

    /**
     * 本站用户启用
     * @adminMenu(
     *     'name'   => '本站用户启用',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '本站用户启用',
     *     'param'  => ''
     * )
     */
    public function cancelBan()
    {
        $id = $this->request->param('id', 0, 'intval');
        if ($id) {
            Db::name("user")->where(["id" => $id, "user_type" => 2])->setField('user_status', 1);
            $this->success("会员启用成功！");
        } else {
            $this->error('数据传入失败！');
        }
    }
    
    /**
     * 用户详情
     * @adminMenu(
     *     'name'   => '用户详情',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> true,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '用户详情',
     *     'param'  => ''
     * )
     */
    public function info()
    {
        $id = $this->request->param('id', 0, 'intval');
        
        $info=Db::name("user")->where(["id" => $id, "user_type" => 2])->find();
        if(empty($info)){
            $this->error('用户不存在');
        }
        $tmp='pic/'.md5($info['user_login']);
        $info['pic1']=$tmp.'camera1.jpg';
        $info['pic2']=$tmp.'camera2.jpg';
        $info['pic3']=$tmp.'camera3.jpg';
        $info['more']=json_decode($info['more'],true);
        $info['more']['mobile_file_url']=empty($info['more']['mobile_file_url'])?'':$info['more']['mobile_file_url'];
        $info['more']['mobile_file_name']=empty($info['more']['mobile_file_name'])?'':$info['more']['mobile_file_name'];
        
        $this->assign('info',$info);
        return $this->fetch();
    }
    /**
     * 用户详情执行
     * @adminMenu(
     *     'name'   => '用户详情执行',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '用户详情执行',
     *     'param'  => ''
     * )
     */
    public function editPost()
    {
        $data = $this->request->param('','trim');
        $m_user=Db::name("user");
        $user=$m_user->where(["id" => $data['id'], "user_type" => 2])->find();
        if(empty($user)){
            $this->error('无此用户');
        }
        if(preg_match(config('reg_money'), $data['money0'])!=1){
            $this->error('授信金额错误'.$data['money0']);
        }
        $data_action=[
            'aid'=>session('ADMIN_ID'),
            'type'=>'user',
            'time'=>time(),
            'ip'=>get_client_ip(),
            'action'=>'对用户'.$user['user_nickname'].'的操作:', 
        ];
        $action=0;
        if($user['is_record']!=$data['is_record']){
            $action=1;
            $data_action['action'].='更改运营商认证'.$user['is_record'].'为'.$data['is_record'].'。';
        }
        if($user['is_xuexin']!=$data['is_xuexin']){
            $action=1;
            $data_action['action'].='更改资质认证'.$user['is_xuexin'].'为'.$data['is_xuexin'].'。';
        }
        if($user['is_name']!=$data['is_name']){
            $action=1;
            $data_action['action'].='更改资质认证'.$user['is_name'].'为'.$data['is_name'].'。';
        }
        if($user['money0']!=$data['money0']){
            $action=1;
            $data_action['action'].='修改额度'.$user['money0'].'为'.$data['money0'].'。'; 
        }
        if($user['money0']!=$data['money0']){
            $action=1;
            $data_action['action'].='修改额度'.$user['money0'].'为'.$data['money0'].'。';
        }
        $more=json_decode($user['more'],true);
        $path=getcwd().'/upload/';
        if(is_file($path.$data['mobile_file_url'])){
            $more['mobile_file_url']=empty($more['mobile_file_url'])?'':$more['mobile_file_url'];
            $more['mobile_file_name']=empty($more['mobile_file_name'])?'':$more['mobile_file_name'];
            if($data['mobile_file_url']!=$more['mobile_file_url']){
                $action=2;
                $data_action['action'].='上传了运营商信息文件。';
                $more['mobile_file_url']=$data['mobile_file_url'];
            }
            if($data['mobile_file_name']!=$more['mobile_file_name']){
                $action=2;
                $data_action['action'].='修改了运营商信息文件名。';
                $more['mobile_file_name']=$data['mobile_file_name'];
            }
           
        }
        unset($data['mobile_file_url']);
        unset($data['mobile_file_name']);
        if($action==0){ 
            $this->success('未修改',url('index'));
        }else{
            if($action==2){
                $data['more']=json_encode($more);
            }
            $m_user->where('id',$data['id'])->update($data);
            Db::name('action')->insert($data_action);
            $this->success('保存成功',url('index'));
        }
      
    }
    /**
     * 本站用户删除
     * @adminMenu(
     *     'name'   => '本站用户删除',
     *     'parent' => 'index',
     *     'display'=> false,
     *     'hasView'=> false,
     *     'order'  => 10000,
     *     'icon'   => '',
     *     'remark' => '本站用户删除',
     *     'param'  => ''
     * )
     */
    public function delete()
    {
        
        $id = $this->request->param('id', 0, 'intval');
        $m_user=Db::name("user");
        $where_user=["id" => $id, "user_type" => 2];
        $info=$m_user->where($where_user)->find();
        
        if($info){
            $this->error('会员信息不存在');
        }
        $where=['status'=>['in',[3,4,5]],'borrower_id'=>['eq',$id]];
        $m_paper=Db::name('paper');
        $tmp=$m_paper->where($where)->find();
        if(!empty($tmp)){
            $this->error('会员有借款未还，不能删除！');
        }
        $m_paper->startTrans();
        //删除未生效借款
        unset($where['status']); 
        $m_paper->where($where)->delete(); 
       
        $result = $m_user->where($where_user)->delete();
        if ($result) {
            $m_paper->commit();
            //处理用户 
            Db::name('user_wx')->where('openid',$info['openid'])->delete(); 
            $this->success("会员删除成功！");
        } else {
            $m_paper->rollback();
            $this->error('会员删除失败,会员不存在！');
        }
        
    }
}
