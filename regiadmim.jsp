<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>register addmin form</title>
</head>
<body>
	<%
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String address=request.getParameter("address");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java45","root","root");
		String s="insert into login values(?,?,?,?,?)";
		PreparedStatement p=cn.prepareStatement(s);
		
		p.setString(1,id);
		p.setString(2,name);
		p.setString(3,email);
		p.setString(4,password);
		p.setString(5,address);
		
		int i=p.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("login.html");
		}
		else
		{
			response.sendRedirect("signup.html");
		}
	%>
</body>
</html>