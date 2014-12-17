<?php
namespace Common\Model;


use Think\Model\AdvModel;

class RosterModel extends AdvModel{
    //待审
    const STATUS_WAITING = 1;
    //通过
    const STATUS_PASS = 2;
    //不通过
    const STATUS_UNPASS =3;

    protected $_validate=array(
        array('student_id','require','student_id',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('name','require','name',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('major','require','major',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('grade','require','grade',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('phone','require','phone',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('department','require','department',self::MUST_VALIDATE,'regex',self::MODEL_INSERT),
        array('intro','require','intro',self::MUST_VALIDATE,'regex',self::MODEL_INSERT)
    );

    protected $_auto=array(
        array('status','1',self::MODEL_INSERT,'string')//新增的报名人的状态自动设置为1，待审核
    );
    /**
     * 报名申请
     */
    public function createRoster($data){
        if($this->create($data)){
            if($this->add()){
                return mz_json_success();
            }
            return mz_json_error('申请失败');
        }
        return mz_json_error($this->getError());
    }

    /**
     * 改变状态
     * @param $roster_id
     * @param $status
     * @return \multitype
     */
    private function changeStatus($roster_id,$status){
        if($this->find($roster_id)){
            $this->status = $status;
            $this->save();
            return mz_json_success('操作成功');
        }
        return mz_json_error('找不到该记录');
    }

    /**
     * 通过
     * @param $roster_id
     * @return \multitype
     */
    public function pass($roster_id){
        return $this->changeStatus($roster_id,self::STATUS_PASS);
    }

    /**
     * 不通过
     * @param $roster_id
     * @return \multitype
     */
    public function unpass($roster_id){
        return $this->changeStatus($roster_id,self::STATUS_UNPASS);
    }

    public function listRoster($department = NULL,$status = NULL,$page=1,$limit=10){
        $where = 'd.id=r.department ';
        if($department){
            $where .= ' AND r.department='.$department;
        }
        if($status){
            $where .= ' AND r.status=' .$status;
        }
        $result  = $this->table("enroll_roster r,enroll_department d")
                        ->field("r.*,d.department")
                        ->where($where)
                        ->limit($page,$limit)
                        ->select();
        if(!$result){
            $result = array();
        }
        return $result;
    }
} 