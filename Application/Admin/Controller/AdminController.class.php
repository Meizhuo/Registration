<?php
namespace Admin\Controller;

use Think\Controller;

class AdminController extends Controller{
    public function loginIndex(){
        header("Content-Type:text/html; charset=utf-8");
        
        $this->assign('title','后台管理系统');
        $this->display();
    }
    public function registerIndex(){
        header("Content-Type:text/html; charset=utf-8");
        
        $this->assign('title','新用户注册');
        $this->display();
    }
    
    public function register(){
        $data=I('post.');
    
        $admin=D('Admin'); 
        if($res){
            $this->success('succeed to register',U('/Admin/Admin/loginIndex/'));
        }
        $this->error($admin->getError());
    }
    
    public function login(){
        $data=I('post.');
        
        $admin=D('Admin');
        $data=$admin->login($data);

        if($data){
            session('username',$data['username']);

            session('id',$data['id']);
            $this->success('跳转到Index界面',U('/Admin/Index/index/'));
        }
        else $this->error('用户名或密码错误');
    }
    
    public function logout(){
        session(null);
        $this->success('退出成功',U('/Admin/Admin/loginIndex/'));
    }
    
    public function audit(){
        $data=I('get.');
//         var_dump($data);
//         exit;
        $roster=D('Roster');
        $res=$roster->changeStatus($data);
        if($res){
            $this->ajaxReturn('succeed');
        }
        $this->ajaxReturn('fail');
    }
    
    
}