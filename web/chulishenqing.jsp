<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生端</title>
<link rel="stylesheet" type="text/css" href="whole.css" >
<style>
a:link {color: #000000;
text-decoration: none;}		
a:visited {color:#404040;
text-decoration: none;}	
a:hover {color:#580000;
text-decoration: none;}	
a:active {color:#580000;
text-decoration: none;}	
</style>
</head>
<body>
<center>
<div id=div2>

<%
String sno=request.getParameter ( "sno" );
if(sno==null) sno=" ";
String rno=request.getParameter ( "rno" );
if(rno==null) rno=" ";
String borrowingday=request.getParameter ( "borrowingday" );
if(borrowingday==null) borrowingday=" ";
String time=request.getParameter ( "time" );
if(time==null) time=" ";
String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
String url="jdbc:sqlserver://localhost:1433;DatabaseName=classroom";
String username="sa";
String password="123";
Class.forName(driverClass);
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
int ins=stmt.executeUpdate("EXEC shenqing1  '"+sno+"','"+rno+"','"+borrowingday+"','"+time+"','未处理'");
out.println("提交成功！");

stmt.close();
conn.close();
%>
<br>
<br>
<a href=shenqingkeshi.jsp>返回</a>
</div>
</center>
</body>
</html>