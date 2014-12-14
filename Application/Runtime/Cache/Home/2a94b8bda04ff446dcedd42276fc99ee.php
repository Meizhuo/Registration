<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><?php echo ($title); ?></title>

<script type="text/javascript" >
    function checkForm(){
        if($("input[name=name]").val()=="")
        {
            alert("请填写姓名");
            return;
        }
        if($("input[name=major]").val()=="")
        {
            alert("请填写专业");
            return;
        }
        if($("input[name=tel]").val()=="")
        {
            alert("请填写联系方式");
            return;
        }
        if(trim(document.getElementById("description").value)=="")
        {
            alert("请填写个人简介");
            return;
        }
        if(!confirm("已经认真填写所有资料？"))
            return;
        else
            $("form#reg").get(0).submit();
    }
    function trim(str){   
        str = str.replace(/^(\s|\u00A0)+/,'');   
        for(var i=str.length-1; i>=0; i--){   
            if(/\S/.test(str.charAt(i))){   
                str = str.substring(0, i+1);   
                break;   
            }   
        }   
        return str;
	}
</script>
    
</head>

<body>

<div>

  	<div>
    	<h1><?php echo ($title); ?></h1>
    	<!-- Logo (221px width) -->
    	
    </div>
    
   	<!-- Form表单 -->
  	<div style="width:50%;" align="center"> 
    	<form action="/Registration/Home/Roster/add/" method="POST">
      		<table style="width:100%;">
	      		<tr>
	        		<th><label>姓名</label></th>
	        		<th><input style="width:85%;" type="text"  name="name"/></th>
	        	</tr>
	        	<div class="clear"></div>
	        	<tr>
	        		<th><label>学号</label></th>
	        		<th><input style="width:85%;" type="text"  name="student_id"/></th>
	        	</tr>
	        	<div class="clear"></div>
	        	<tr>	
	        		<th><label>专业</label></th>
	        		<th><input style="width:85%;" type="text"  name="major"/></th>
	        	</tr>
	        	<div class="clear"></div>
	        	<tr>
	        		<th><label>长/短号</label></th>
	        		<th><input style="width:85%;" type="text"  name="phone"/></th>
	        	</tr>
	        	<div class="clear"></div>
	        	<tr>
	        		<th><label>年级</label></th>
	        		<th>
	        			<select name="grade" style="width:85%;">
	        				<option value="大一">大一</option>
	        				<option value="大二">大二</option>
	        			</select>
	        		</th>
	        		
	        	</tr>
	        	<div class="clear"></div>
	        	<tr>
	        		<th><label>意向部门</label></th>
		        	<th>
		        		<select name="department" style="width:85%;">
		        			<option value="1">移动组</option>
		        			<option value="2">Web组</option>
		        			<option value="3">美工组</option>
		        		</select>
	        		</th>
	        	</tr>
	        	<div class="clear"></div>
	        	<tr>
	        		<th><label>简介:</label></th>
	        		<th>
		        		<textarea rows="5" style="width:85%;" name="intro">
		        		
		        		</textarea>
	        		</th>
	      		</tr>
	      		
	      		<div class="clear"></div>
	      		
	      		<tr>
	        		<th colspan="2"><button style="width:100%; height:40px;" type="submit">Join Us!</button></th>
	      		</tr>
      		</table>
    	</form>
    	
	</div>

</div>
</body>
</html>