<?php
namespace Api\Controller;

use Common\Controller\ApiController;
class UserController extends  ApiController{


    public function login(){
        $this->reqPost(array('username','password'));
        $this->ajaxReturn(D('Admin')->login(I('post.username'),I('post.password')));
    }

    public function register(){
        $this->reqPost(array('username','password'));
        $this->ajaxReturn(D('Admin')->register(I('post.')));
    }
} 