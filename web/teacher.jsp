
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>教师端</title>
<style>body {
	background: #efe5d0  top left;
	margin: 20px;
	font-family: "Arial","Microsoft YaHei","黑体","宋体",sans-serif;
}
div{background-color: #e1ceb8;
width:300px;  
   height:200px;  
   position:absolute;  
   left:50%;  
   top:50%;  
   margin:-100px 0 0 -150px;}
 span{color: #A8A8A8;
font-size:15px;}
</style>
</head>
<body>
<div>
<center>
<form action="teaching1.jsp">
<h2>查找课表</h2>
<input type="text" name="info">
<br>

<span>请输入课程名或者教师名</span>
<br>
<br>
<input type="submit" value="确定">
</form>
</center>
</div>

</body>
</html>