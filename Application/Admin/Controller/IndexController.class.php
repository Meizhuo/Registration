<?php
namespace Admin\Controller;
use Common\Controller\BaseAdminController;

class IndexController extends BaseAdminController {
    public function index(){
        $this->reqLogin();
            //$this->assign('username',session('username'));
            
            $roster=D('Roster');
            $count=$roster->count();
            
            $page=new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(10)
            $page->setConfig('prev', "Previous &laquo;");//&laquo; HTML字符实体（Character Entities）,显示 <<    上一页
            $page->setConfig('next', "Next &raquo;");   //&raquo; 显示>>   下一页
            $page->setConfig('first',"First <<");//第一页
            $page->setConfig('last', "Last >>");//最后一页
            //下面'theme'目的是显示如下导航条         First « Previous «  6  7   8   9   10  Next » Last »
            $page->setConfig('theme',' %FIRST% %UP_PAGE%  %LINK_PAGE%  %DOWN_PAGE%  %END% ');//这里的END有问题
            
            $show=$page->show();//当全部设置好后就输出显示
            if(I('get.')){
                $range=I('get.');
            }
            else{
                $range=array('department'=>'1','status'=>'1');
            }
            $list=$roster->listRoster($range,$page->firstRow,$page->listRows);

            switch ($range['status']){
                case 1:
                    $assign['status']='待审核人选';
                    $assign['handle1']='通过';
                    $assign['handle2']='拒绝';
                    break;
                case 2:
                    $assign['status']='通过审核人选';
                    break;
                case 3:
                    $assign['status']='没通过审核人选';
                    break;
            }
            $assign['username']=session('username');
            $assign['roster_count']=$count;
            $assign['roster_list']=$list;//把$list这整一个列表分配给roster_list
            $assign['title']='后台管理系统';
           
            $assign['page_method']=$show;
            
            $this->assign($assign);
            $this->display();

    }
}