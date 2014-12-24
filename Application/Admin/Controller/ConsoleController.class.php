<?php
namespace Admin\Controller;

use Common\Controller\BaseAdminController;
use Common\Model\RosterModel;

/**
 * Class ConsoleController
 * 后台主页
 * @package Admin\Controller
 */
class ConsoleController extends BaseAdminController{
    /**
     * 登陆页
     */
    public function login(){
        $this->assign('title','后台管理系统');
        $this->display();
    }

    /**
     * 注册页
     */
    public function register(){
        $this->assign('title','新用户注册');
        $this->display();
    }

    /**
     * 管理主页
     * @param int $status
     * @param int $department
     * @param int $page
     * @param int $limit
     */
    public function home($status = RosterModel::STATUS_WAITING,$department = 1,$page = 1,$limit = 10 ){
        $this->reqLogin();

        $roster=D('Roster');
        //$department = NULL,$status = NULL,$page=1,$limit=10
        $list=$roster->lists(I('get.department',1),I('get.status',1),$page,$limit);

        $assign['status'] = I('get.status',1);
        $assign['department'] = I('get.department',1);
        $assign['username']=session('username');
        $assign['roster_list']=$list;//把$list这整一个列表分配给roster_list
        $assign['title']='后台管理系统';
        $assign['page'] = $page;

        $this->assign($assign);
        $this->display();

    }
}