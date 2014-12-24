<?php
return array(
	//'配置项'=>'配置值'
    'URL_ROUTER_ON'   => true,// 开启路由
    'URL_ROUTE_RULES' => require_once(MODULE_PATH . 'Conf/routers.php'),
);