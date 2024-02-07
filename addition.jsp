<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>trainadd title here</title>
</head>
<body>
    <%
		String trainnumber=request.getParameter("trainnumber");
		String trainname=request.getParameter("trainname");
		String stetionfrom=request.getParameter("stetionfrom");
		String stetionto=request.getParameter("stetionto");
		String available=request.getParameter("available");
		String fare=request.getParameter("fare");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java45","root","root");
		String s="insert into addit values(?,?,?,?,?,?)";
		PreparedStatement p=cn.prepareStatement(s);
		
		p.setString(1,trainnumber);
		p.setString(2,trainname);
		p.setString(3,stetionfrom);
		p.setString(4,stetionto);
		p.setString(5,available);
		p.setString(6,fare);
		
		int i=p.executeUpdate();
		
		if(i>0)
		{
			response.sendRedirect("home.html");
		}
	

		%>
</body>
</html>