<?php
$local_config = array();
if (file_exists(CONF_PATH . 'local_config.php')) {
    $local_config  = require_once(CONF_PATH . 'local_config.php');
}

if(getenv('Platform_Coding') == '1'){
    $local_config = require_once(CONF_PATH . 'Platform_Coding.php');
}
return array_merge(array(//'配置项'=>'配置值'
    'DB_TYPE' => 'mysql', // 数据库类型
    'DB_HOST' => 'localhost', // 服务器地址
    'DB_NAME' => 'enroll', // 数据库名
    'DB_USER' => 'root', // 用户名
    'DB_PWD' => '13680enmxd', // 密码
    'DB_PORT' => 3306, // 端口
    'DB_PREFIX' => 'enroll_', // 数据库表前缀
    'DB_CHARSET' => 'utf8', // 字符集
    'DB_DEBUG' => TRUE, // 调试模式
    'URL_MODEL' => 2, //URL模式 REWRITE模式
    'URL_CASE_INSENSITIVE' => true, //不区分URL大小写
    'LOAD_EXT_FILE' => 'functions', // 自定义加载函数文件
), $local_config);

