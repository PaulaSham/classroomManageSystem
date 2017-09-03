<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除过期申请</title>
<link rel="stylesheet" type="text/css" href="whole.css" >
</head>
<body>
<div id=div2><center>
<table border="1"><tr>
<td>学号</td><td>课室</td><td>预约日期</td><td>课时</td><td>状态</td></tr>
<%
String shenqing=request.getParameter ( "shenqing" );
if(shenqing==null) shenqing=" ";
String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
String url="jdbc:sqlserver://localhost:1433;DatabaseName=classroom";
String username="sa";
String password="123";
Class.forName(driverClass);
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
int ins=stmt.executeUpdate("delete from borrowing WHERE sno = '"+shenqing+"'");
out.println("删除成功！");
ResultSet rs=stmt.executeQuery("select * from borrowing ");
while(rs.next())//只有查询得到结果才能进入循环  
{      out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td></tr>");
}
rs.close();
stmt.close();
conn.close();
%>
</table>
</center></div>
</body>
</html>