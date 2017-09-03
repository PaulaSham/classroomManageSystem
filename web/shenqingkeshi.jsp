<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生申请课室</title>
<link rel="stylesheet" type="text/css" href="whole.css" >

</head>
<body>
<center>
<h1>学生申请表</h1>
<p>请填写以下信息</p>
<form method="post" action="chulishenqing.jsp">
<div id=div2>
<div class="tableRow">
<p>学号:</p>
<p><input type="text" name="sno" ></p>
</div>
<div class="tableRow">
<p>教室:</p>
<p><input type="text" name="rno"></p>
</div>
<div class="tableRow">
<p>预约日期:</p>
<p><input type="date" name="borrowingday"></p><span>格式请参考2017/01/01</span>
</div>
<div class="tableRow">
<p>预约课时:</p>
<p>
            <input type="radio" name="time" value="12">12<br>
            <input type="radio" name="time" value="34">34<br>
            <input type="radio" name="time" value="56" >56<br>
            <input type="radio" name="time" value="78">78
		</p>

</div>
<br>
<div class="tableRow">
<input type="submit" value="确定">
</div>
</div>
</form>
</center>
  
</body>
</html>