<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>    
    
<!DOCTYPE html>
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">

	<title>Creator</title>

	<link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="box" id="createbox">

<%
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	String email_address = request.getParameter("email_address");
	String contact_number = request.getParameter("contact_number");
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connectSQL = DriverManager.getConnection("jdbc:mysql://localhost:3306/template_db", "root", "Love,@funjai_gr");
		Statement st = connectSQL.createStatement();
		
		st.executeUpdate("insert into user_info_tbl(first_name,last_name,email_address,contact_number) values('" + first_name + "','" + last_name + "','" + email_address + "','" + contact_number + "')");
		
		out.println("<div class=\"block\"><strong>Record added.</strong></div>");
		
	}
	
	catch (Exception e) {
		
		out.println("<div class=\"block\"><strong>Error.</strong></div>");
		
	}
%>

	<div class="field is-grouped">
		<div class="control">
		<a href="form.jsp"><button class="button is-success">Add again</button></a>
		</div>
		<div class="control">
		<a href="retrieve.jsp"><button class="button is-info">View records</button></a>
		</div>
		<div class="control">
		<a href="index.jsp"><button class="button is-light">Go home</button></a>
		</div>
	</div>
	
</div>
</body>
</html>