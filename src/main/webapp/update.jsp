<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
</head>
<body>
	<h1>Update Employee</h1>
	<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
	%>
	<form action="update">
		<input type="text" name="id" readonly="readonly" value="<%= rs.getInt(1) %>">
		<input type="text" name="name" value="<%= rs.getString(2) %>">
		<input type="text" name="email" value="<%= rs.getString(3) %>">
		<input type="text" name="phone" value="<%= rs.getString(4) %>">
		<input type="text" name="password" value="<%= rs.getString(5) %>">
		<button type="submit">Update</button>	
	</form>
</body>
</html>