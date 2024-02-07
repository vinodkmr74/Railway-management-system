<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>booking</title>
</head>
<body>
<%
String name=request.getParameter("name");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String mobile=request.getParameter("mobile");
String allclass=request.getParameter("allclass");
String preference=request.getParameter("preference");


Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java45","root","root");
String s="insert into booka values(?,?,?,?,?,?)";
PreparedStatement p=cn.prepareStatement(s);

p.setString(1,name);
p.setString(2,age);
p.setString(3,gender);
p.setString(4,mobile);
p.setString(5,allclass);
p.setString(6,preference);

int i=p.executeUpdate();
if(i>0)
{
	response.sendRedirect("home.html");
}
%>

</body>
</html>