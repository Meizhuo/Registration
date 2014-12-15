<?php
namespace Admin\Model;

use Think\Model;
class RosterModel extends Model{
    protected $_validate=array(
        array('student_id','require','student_id',1,'regex',1),
        array('name','require','name',1,'regex',1),
        array('major','require','major',1,'regex',1),
        array('grade','require','grade',1,'regex',1),
        array('phone','require','phone',1,'regex',1),
        array('department','require','department',1,'regex',1),
        array('intro','require','intro',1,'regex',1)
    );
    
    protected $_auto=array(
        array('status','1',1,'string')//新增的报名人的状态自动设置为1，待审核
    );
    
    
    public function addRoster($data){
        if($this->create()){
            if($this->add()){
                return true;
            }
            return false;
        }
        
        return false;
    }
    
    public function changeStatus($data){
        if($this->data($data)){
            if($this->save()){
                return true;
            }

            return false;
            
        }
//         echo "2";
//         exit;
        return false;
    }
    
    public function listRoster($range,$firstRow,$pageSize){
        $list=$this->table("enroll_roster r,enroll_department d")
                   ->field("r.*,d.department")
                   ->where("d.id=r.department AND r.department=%s AND r.status=%s",$range['department'],$range['status'])
                   ->limit($firstRow.','.$pageSize)
                   ->select();
        
//         echo "<pre>";
//         var_dump($list);
//         echo "</pre>";
//         exit;
        
        if($list){
            return $list;
        }
        return false;
    }
    
}