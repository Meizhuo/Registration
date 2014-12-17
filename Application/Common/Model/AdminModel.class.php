<?php
namespace Common\Model;

use Think\Model;
class AdminModel extends Model{
    protected $_validate=array(
        array('username','require','缺少参数username',0,'regex',self::MODEL_INSERT),
        array('password','require','缺少参数password',0,'regex',self::MODEL_INSERT),
        array('username','','用户名已存在',2,'unique',self::MODEL_INSERT),
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

    /**
     * 登陆
     * @param $username
     * @param $password
     * @return \multitype
     */
    public function login($username,$password){
        $where['username'] = $username;
        $users = $this->where($where)->limit(1)->select();
        if($users) {
            if($users[0]['password'] == md5($password)){
                return mz_json_success();
            }
            return mz_json_error('密码不正确');
        }
        return mz_json_error('用户不存在');

    }
    
    
}