<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">

	<title>Updater</title>

	<link rel="stylesheet" href="styles.css">
</head>

<body>

<%
String id = request.getParameter("contact_id");

	try {
		
		Class.forName("com.mysql.jdbc.Driver");
	
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

	try{ 
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/contacts_db","root","Love,@funjai_gr");
		statement=connection.createStatement();
		String sql ="SELECT * FROM contact_details_tbl where contact_id=" + id;
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
%>
		
<form method="POST" action="updated.jsp" class="box" id="updatebox">

	<div class="field">
		<label class="label">Contact ID = <%=resultSet.getString("contact_id") %></label>
		<div class="control">
		<input class="input" type="hidden" placeholder="Contact ID" name="contact_id" value="<%=resultSet.getString("contact_id") %>">
		</div>
	</div>
	
	<div class="field">
		<label class="label">Last Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="Last Name" name="last_name" value="<%=resultSet.getString("last_name") %>" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">First Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="First Name" name="first_name" value="<%=resultSet.getString("first_name") %>" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Email Address</label>
		<div class="control">
		<input class="input" type="email" placeholder="Email Address" name="email_address" value="<%=resultSet.getString("email_address") %>" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Job Title</label>
		<div class="control">
		<input class="input" type="text" placeholder="Job Title" name=job_title value="<%=resultSet.getString("job_title") %>">
		</div>
	</div>
	
	<div class="field">
		<label class="label">Business Phone</label>
		<div class="control">
		<input class="input" type="text" placeholder="Business Phone" name="business_phone" value="<%=resultSet.getString("business_phone") %>">
		</div>
	</div>
	
	<div class="field">
		<label class="label">Home Phone</label>
		<div class="control">
		<input class="input" type="text" placeholder="Home Phone" name="home_phone" value="<%=resultSet.getString("home_phone") %>">
		</div>
	</div>
	
	<div class="field">
		<label class="label">City Lived</label>
		<div class="control">
		<input class="input" type="text" placeholder="City Lived" name="city_lived" value="<%=resultSet.getString("city_lived") %>">
		</div>
	</div>
	
	<div class="field is-grouped" style="padding-top: 2%;">
		
		<div class="control">
		<button class="button is-success" type="submit">Submit</button>
		</div>
	
		<div class="control">
		<a href="retrieve.jsp"><button class="button is-danger" type="button">Cancel</button></a>
		</div>
		
	</div>

</form>

<%

	}
		
	connection.close();
	
	} catch (Exception e) {
		
		e.printStackTrace();
		
	}

%>

</body>
</html>