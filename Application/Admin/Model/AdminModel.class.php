<?php
namespace Admin\Model;

use Think\Model;
class AdminModel extends Model{
    protected $_validate=array(
        array('username','require','username can not be NULL',0,'regex',1),
        array('username','','username has been existed',2,'unique',1),
        array('password','require','password must be existent',0,'regex',3),
        array('repassword','require','please input password again to confirm',0,'regex',3),
        array('password','repassword','The two passwords do not match, please re-enter',0,'confirm',3),
    );
    
    protected $_auto=array(
        array('password','md5',3,'function'),
        array('create_time','time',1,'function')
    );
    
    public function register($data){
        if($this->create()){
            if($this->add()){
                return true;
            }
            return false;
        }
        return false;
    }
    
    public function login($data){
        $where="username= '".$data['username']."' AND password='".md5($data['password'])."'";
//         echo $where;
        $res=$this->where($where)->find();
//         echo "<pre>";
//         var_dump($res);
//         echo "</pre>";
//         exit;
        unset($res['password']);//这里是不可以$res=unset()这样的，因为unset() 不再是一个真正的函数：它现在是一个语句。这样就没有了返回值，试图获取 unset() 的返回值将导致解析错误。
        if($res){
            return $res;
        }
        return false;
    }
    
    
}