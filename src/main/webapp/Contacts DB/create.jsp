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
	
	<style>
	
	body {
	
	background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
	background-size: 400% 400%;
	animation: gradient 15s ease infinite;
	display: flex;
	flex-direction: column;
	height: 100vh;
	margin: 0px;
	overflow: hidden;
	
	}
	
	@keyframes gradient {
	0% {
		background-position: 0% 50%;
	}
	50% {
		background-position: 100% 50%;
	}
	100% {
		background-position: 0% 50%;
	}
}
	
	</style>
	
</head>

<body>

<div class="box" id="createbox">

<%
	String company_name = request.getParameter("company_name");
	String last_name = request.getParameter("last_name");
	String first_name = request.getParameter("first_name");
	String email_address = request.getParameter("email_address");
	String job_title = request.getParameter("job_title");
	String business_phone = request.getParameter("business_phone");
	String home_phone = request.getParameter("home_phone");
	String city_lived = request.getParameter("city_lived");
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connectSQL = DriverManager.getConnection("jdbc:mysql://localhost:3306/contacts_db", "root", "Love,@funjai_gr");
		Statement st = connectSQL.createStatement();
		
		st.executeUpdate("insert into contact_details_tbl(company_name,last_name,first_name,email_address,job_title,business_phone,home_phone,city_lived) values('" + company_name + "','" + last_name + "','" + first_name + "','" + email_address + "','" + job_title + "','" + business_phone + "','" + home_phone + "','" + city_lived + "')");
		
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