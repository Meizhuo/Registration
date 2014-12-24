<?php
namespace Api\Controller;

use Common\Controller\ApiController;

/**
 * Class UserController
 * 用户接口
 * @package Api\Controller
 */
class UserController extends  ApiController{
    /**
     * 登陆
     */
    public function login(){
        $this->reqPost(array('username','password'));
        $result = D('Admin')->login(I('post.username'),I('post.password'));
        if(isset($result['code'])){
            //login successfully
            session('username',I('post.username'));
        }
        $this->ajaxReturn($result);
    }
    /**
     *登出
     */
    public function logout(){
        session(null);
        $this->ajaxReturn(mz_json_success());
    }
    /**
     * 注册
     */
    public function register(){
        $this->reqPost(array('username','password'));
        $this->ajaxReturn(D('Admin')->register(I('post.')));
    }


} 