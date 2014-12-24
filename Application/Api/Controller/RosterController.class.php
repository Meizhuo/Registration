<?php

namespace Api\Controller;


use Common\Controller\ApiController;

/**
 * Class RosterController
 * 报名表接口
 * @package Api\Controller
 */
class RosterController extends ApiController{
    /**
     * 申请
     */
    public function apply(){
        $this->reqPost(array('name','major','phone','student_id','grade','department','intro'));
        $this->ajaxReturn(D('Roster')->createRoster(I('post.')));
    }

    /**
     * 审核通过
     */
    public function pass(){
        $this->reqPost(array('id'));
        $this->ajaxReturn(D('Roster')->pass(I('post.id')));
    }

    /**
     * 审核不同通过
     */
    public function unpass(){
        $this->reqPost(array('id'));
        $this->ajaxReturn(D('Roster')->unpass(I('post.id')));
    }
} 