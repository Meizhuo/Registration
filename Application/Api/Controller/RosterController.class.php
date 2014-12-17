<?php

namespace Api\Controller;


use Common\Controller\ApiController;

class RosterController extends ApiController{

    public function apply(){
        $this->reqPost(array('name','major','phone','student_id','grade','department','intro'));
        $this->ajaxReturn(D('Roster')->createRoster(I('post.')));
    }
} 