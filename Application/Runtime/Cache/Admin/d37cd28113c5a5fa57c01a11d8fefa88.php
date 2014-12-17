<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>注册</title>
    
        <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
        <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    
</head>
<body>




    <div style="text-align: center;margin-top: 40px">
        <p>
            <label>用户名</label>
            <input class="text-input" type="text" id="username" placeholder="请输入用户名"/>
        </p>

        <p>
            <label>密码</label>
            <input class="text-input" type="password" id="password" placeholder="请输入密码"/>
        </p>

        <p>
            <label>确认密码</label>
            <input class="text-input" type="password" id="repassword" placeholder="请再次输入"/>
        </p>
        <button class="btn btn-primary" id="btn-submit">提交</button>
        <a href="<?php echo U('Admin/Admin/loginIndex');?>">已有账号,登陆</a>
    </div>
    <script type="application/javascript">
        (function ($) {
            $('#btn-submit').on('click', function () {
                var username = $('#username').val();
                var password = $('#password').val();
                var repassword = $('#repassword').val();

                if (password !== repassword) {
                    alert('两个密码不一致');
                    return;
                }

                if(username === ''){
                    alert('用户名不能为空');
                    return;
                }

                $.post("<?php echo U('Api/User/register','','');?>", {
                    username: username,
                    password: password
                }, function (data) {
                    console.log(data);
                }, 'json');
            });
        })(jQuery);
    </script>



</body>
</html>