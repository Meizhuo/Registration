<?php
namespace Api\Controller;

use Common\Controller\ApiController;
class UserController extends  ApiController{


    public function login(){
//        echo __METHOD__;
//        c();
        echo "233";
    }

    public function register(){
        $this->reqPost(array('username','password'));
        $this->ajaxReturn(D('Admin')->register(I('post.')));
    }
} 