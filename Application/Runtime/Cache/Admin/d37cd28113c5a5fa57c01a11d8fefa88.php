<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title><?php echo ($title); ?></title>
</head>

<body>
	<div align="center">
		<form action="/Registration/Admin/Admin/register" method="POST">
			<p>
				<label>用户名</label>
				<input class="text-input" type="text" name="username"/>
			</p>
			
			<p>
		        <label>密码</label>
		        <input class="text-input" type="password" name="password"/>
		    </p>
		    
		    <p>
		        <label>确认密码</label>
		        <input class="text-input" type="password" name="repassword"/>
		    </p>
		    
		    <p>
		     		<input class="button" type="submit" value="提交"/>
		    </p>
	    </form>
	</div>
</body>
</html>