<?php
namespace Home\Controller;

use Think\Controller;
class RosterController extends Controller{
    public function add(){
        $data=I('post.');
//         echo "<pre>";
//         var_dump($data);
//         echo "</pre>";
//         exit;
        $roster=D('Admin/Roster');
        $res=$roster->addRoster($data);
        if($res){
            $this->success('报名成功',U('/Home/Index/index'));//报名成功后跳转到官网?
        }else{
            $this->error($roster->getError());
        }
    }
    
}