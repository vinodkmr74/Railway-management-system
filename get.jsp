<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="NFR.jpg">
<center>
<table border="3">
<tr>

<td style="color:red;">trainnumber</td>
<td style="color:red;">trainname</td>
<td style="color:red;">fromstetion</td>
<td style="color:red;">tostetion</td>
<td style="color:red;">available</td>
<td style="color:red;">fare</td>
</tr>

        <% 
        String trainnumber=request.getParameter("trainnumber");
        Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java45","root","root");
		String s="select * from addit where trainnumber="+trainnumber;
		PreparedStatement p=cn.prepareStatement(s);
		
		ResultSet r=p.executeQuery();
		
		while(r.next())
		{
			%>			
			<tr>
			<td style="color:red;"><%=r.getString("trainnumber") %></td>
			<td style="color:red;"><%=r.getString("trainname") %></td>
			<td style="color:red;"><%=r.getString("fromstetion") %></td>
			<td style="color:red;"><%=r.getString("tostetion") %></td>
			<td  style="color:red;"><%=r.getString("available") %></td>
			<td style="color:red;"><%=r.getString("fare") %></td>
			</tr>
			<%
		}
		
		%>
		
	</table>
	</center>	
</body>
</html>