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

class GuideController extends HomeBaseController
{
    private $m;
    private $types;
    public function _initialize()
    {
        parent::_initialize();
        $this->m=Db::name('guide');
        $this->types=config('guide_types');
    }
     
    /**
     * 协议
     */
    public function agreements()
    {
        
        $m=$this->m;
        $types=$this->types;
        $list=$m->where(['type'=>0,'is_show'=>1])->order('sort asc')->column('id,title,name');
        $this->assign('list',$list);
        
        $this->assign('html_title',$types[0]);
        return $this->fetch();
        
    }
    /**
     * 协议
     */
    public function agreement()
    {
        $name=$this->request->param('id',0);
        $m=$this->m;
        
        $info=$m->where(['type'=>0,'id'=>$name])->find();
        if(empty($info)){
            $this->redirect(url('portal/guide/agreements'));
        }
        $this->assign('info',$info);
        $this->assign('html_title',$info['title']);
        return $this->fetch();
        
    }
    /**
     * 品牌
     */
    public function brand()
    {
        
        $m=$this->m;
        $types=$this->types;
        $info=$m->where(['name'=>'品牌说明','type'=>1,'is_show'=>1])->find();
        $list=$m->where(['name'=>'品牌特色','type'=>1,'is_show'=>1])->order('sort asc')->select();
        $this->assign('info',$info);
        $this->assign('list',$list);
        $this->assign('html_title',$types[1]);
        return $this->fetch();
        
    }
    /**
     * 帮助中心
     */
    public function help()
    {
        
        $m=$this->m;
        $types=$this->types;
        $names=$m->where(['type'=>2,'is_show'=>1])->group('name')->column('name');
        $list=[];
        foreach($names as $k=>$v){
            $list[$k]['name']=$v;
            $list[$k]['list']=$m->where(['name'=>$v,'type'=>2,'is_show'=>1])->order('sort asc')->column('');
        }
       
       
        $this->assign('list',$list);
        $this->assign('html_title',$types[2]);
        return $this->fetch();
        
    }
    
}
