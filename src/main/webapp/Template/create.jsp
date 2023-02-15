<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Creator</title>
</head>
<body>

<%
	String first_name = request.getParameter("first_name");
	String last_name = request.getParameter("last_name");
	String email_address = request.getParameter("email_address");
	String contact_number = request.getParameter("contact_number");
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection connectSQL = DriverManager.getConnection("jdbc:mysql://localhost:3306/template_db", "root", "Love@funjai_gr");
		Statement st = connectSQL.createStatement();
		
		st.executeUpdate("insert into member_info(first_name,middle_name,last_name) values('" + first_name + "','" + last_name + "','" + email_address + "','" + contact_number + "')");
		
		response.sendRedirect("retrieve.jsp");
		out.println("<h1>Record added.</h1>");
		
	}
	
	catch (Exception e) {
		
		out.println("Error.");
		
	}
%>


</body>
</html>