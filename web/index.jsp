<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教室信息管理系统</title>
<style>body {
	background: #efe5d0  top left;
	margin: 20px;
	font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
}
#div1{
background-color: #e1ceb8;
margin:45px;
padding:10px;
width:320px;
float:right;}
</style>
</head>
<body>

<h1>教室信息管理系统</h1>
<img src="a.png"  alt="classroom" />

<div id=div1>
<form method="post" action="success.jsp"  >
<h3>用户登录</h3>
用户名&nbsp;&nbsp;<input type="text" name="userName">
<br>
<br>
密&nbsp;&nbsp;码&nbsp;&nbsp;<input type="password" name="userPass">
<br>
<ul>
            <li><input type="radio" name="person" value="teacher">教师</li>
            <li><input type="radio" name="person" value="student">学生</li>
            <li><input type="radio" name="person" value="manager">管理员</li>
</ul>
<center><input id=login type="submit" value="登录"></center>

</form>
</div>


</body>
</html>