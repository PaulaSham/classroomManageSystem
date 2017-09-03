<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师端</title>
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
<h1>搜索结果</h1>
<table border="1"><tr>
<td>学院</td><td>课程名</td><td>讲师</td><td>头衔</td><td>教室</td><td>日期</td><td>课时</td><td>教学楼</td><td>课程学分</td></tr>
<%
String info=request.getParameter ( "info" );
if(info==null) info=" ";
String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
String url="jdbc:sqlserver://localhost:1433;DatabaseName=classroom";
String username="sa";
String password="123";
Class.forName(driverClass);
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("EXEC dbo.teaching1 '"+info+"','"+info+"'");
while(rs.next())//只有查询得到结果才能进入循环  
{      out.println("<tr><td>"+rs.getString(1)+ "</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td></tr>");
}
rs.close();
stmt.close();
conn.close();
%>
</table>
<br>
<br>
<a href="teacher.jsp">返回搜索</a>
</center>
</body>
</html>