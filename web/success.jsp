<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="GB2312"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>µÇÂ¼</title>
</head>
<body>
<%
String userName=request.getParameter ( "userName" );
if(userName==null)userName=" ";
String userPass=request.getParameter ( "userPass" );
if(userPass==null)userPass=" ";
String person = request.getParameter("person");

boolean isMatch=false;
String name1;
String pass1;
String driverClass="com.microsoft.sqlserver.jdbc.SQLServerDriver";
String url="jdbc:sqlserver://localhost:1433;DatabaseName=classroom";
String username="sa";
String password="123";
Class.forName(driverClass);
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from "+ person + " where no='" + userName+ "' and password = '" + userPass + "'");
if(rs.next())//Ö»ÓÐ²éÑ¯µÃµ½½á¹û²ÅÄÜ½øÈëÑ­»·  
{      isMatch=true;
		
}

rs.close();
stmt.close();
conn.close();
%>
<% 
  if(isMatch==true)//µÇÂ¼³É¹¦  
  {
  if(person.equals("student"))
	  response.sendRedirect("student.jsp");
  else if(person.equals("teacher"))
	  response.sendRedirect("teacher.jsp");
  else if(person.equals("manager"))
	  response.sendRedirect("manager.jsp");
  }
  else 
		response.sendRedirect("fail.html");
%>  

</body>
</html>