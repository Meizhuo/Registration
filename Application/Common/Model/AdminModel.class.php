<?php
namespace Common\Model;

use Think\Model;
class AdminModel extends Model{
    protected $_validate=array(
        array('username','require','缺少参数username',0,'regex',self::MODEL_INSERT),
        array('password','require','缺少参数password',0,'regex',self::MODEL_INSERT),
        array('username','','username has been existed',2,'unique',self::MODEL_INSERT),
    );
    
    protected $_auto=array(
        array('password','md5',3,'function'),
        array('create_time','time',1,'function')
    );

    /**
     * 注册
     * @param $data
     * @return \multitype
     */
    public function register($data){
        if($this->create()){
            if($this->add()){
                return mz_json_success('注册成功');
            }
            return mz_json_error('注册失败');
        }
        return mz_json_error($this->getError());
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