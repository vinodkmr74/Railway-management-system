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

<td style="color:red;">name</td>
<td style="color:red;">age</td>
<td style="color:red;">gender</td>
<td style="color:red;">mobile</td>
<td style="color:red;">allclass</td>
<td style="color:red;">preference</td>
</tr>

        <% 
        String trainnumber=request.getParameter("trainnumber");
        Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/java45","root","root");
		String s="select * from addit where name="+name;
		PreparedStatement p=cn.prepareStatement(s);
		
		ResultSet r=p.executeQuery();
		
		while(r.next())
		{
			%>			
			<tr>
			<td style="color:red;"><%=r.getString("name") %></td>
			<td style="color:red;"><%=r.getString("age") %></td>
			<td style="color:red;"><%=r.getString("gender") %></td>
			<td style="color:red;"><%=r.getString("mobile") %></td>
			<td  style="color:red;"><%=r.getString("allclass") %></td>
			<td style="color:red;"><%=r.getString("preference") %></td>
			</tr>
			<%
		}
		
		%>
		
	</table>
	</center>	
</body>
</html>