<?php
/**
 * Created by PhpStorm.
 * User: jayin
 * Date: 14/12/17
 * Time: 下午5:10
 */

namespace Common\Controller;


use Think\Controller;

class BaseAdminController extends Controller{

    public function reqLogin(){
        if(!session("?username")){
            $this->redirect('Admin/Admin/LoginIndex');
        }
        return $this;
    }

} 