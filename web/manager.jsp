<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员端</title>
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
<div id=div2>
<center>
<h1>学生申请课室情况</h1>
<table border="1"><tr>
<td>学号</td><td>课室</td><td>预约日期</td><td>课时</td><td>状态</td></tr>
<%
String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
String url="jdbc:sqlserver://localhost:1433;DatabaseName=classroom";
String username="sa";
String password="123";
Class.forName(driverClass);
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from borrowing");
while(rs.next())//只有查询得到结果才能进入循环  
{      out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
}
rs.close();
stmt.close();
conn.close();
%>
</table>
<br>
<a href="alter.jsp">修改申请状态</a>

<a href="delete.jsp">删除过期申请</a>

</center></div>
</body>
</html>