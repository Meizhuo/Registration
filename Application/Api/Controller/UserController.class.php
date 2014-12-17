<?php
namespace Api\Controller;

use Common\Controller\ApiController;
class UserController extends  ApiController{


    public function login(){
        $this->reqPost(array('username','password'));
        $result = D('Admin')->login(I('post.username'),I('post.password'));
        if(isset($result['code'])){
            //login successfully
            session('username',I('post.username'));
        }
        $this->ajaxReturn($result);
    }

    public function register(){
        $this->reqPost(array('username','password'));
        $this->ajaxReturn(D('Admin')->register(I('post.')));
    }
} 