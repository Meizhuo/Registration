<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo ($title); ?></title>
</head>

<body background="/Registration/Public/image/bg-radial-gradient.gif">
	<h1><?php echo ($title); ?></h1>
	<div> 
		您好,<?php echo ($username); ?> | 
		<a href="/Registration/Admin/Admin/logout/" title="logout">退出</a> 
	</div>
	<p>下面是报名名单</p>
	<table>
		<tr>
			<th>学号</th>
			<th>姓名</th>
			<th>年级</th>
			<th>专业</th>
			<th>意向部门</th>
		</tr>
	</table>
		
</body>
</html>