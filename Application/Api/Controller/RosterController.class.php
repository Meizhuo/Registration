<?php

namespace Api\Controller;


use Common\Controller\ApiController;

class RosterController extends ApiController{

    public function apply(){
        $this->reqPost(array('name','major','phone','student_id','grade','department','intro'));
        $this->ajaxReturn(D('Roster')->createRoster(I('post.')));
    }

    public function pass(){
        $this->reqPost(array('id'));
        $this->ajaxReturn(D('Roster')->pass(I('post.id')));
    }
    public function unpass(){
        $this->reqPost(array('id'));
        $this->ajaxReturn(D('Roster')->unpass(I('post.id')));
    }
} 