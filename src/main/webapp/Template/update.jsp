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
String id = request.getParameter("user_id");

	try {
		
		Class.forName("com.mysql.jdbc.Driver");
	
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;

	try{ 
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/template_db","root","Love,@funjai_gr");
		statement=connection.createStatement();
		String sql ="SELECT * FROM user_info_tbl where user_id=" + id;
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
%>
		
<form method="POST" action="updated.jsp" class="box" id="updatebox">

	<div class="field">
		<label class="label">User ID = <%=resultSet.getString("user_id") %></label>
		<div class="control">
		<input class="input" type="hidden" placeholder="User ID" name="user_id" value="<%=resultSet.getString("user_id") %>">
		</div>
	</div>
	
	<div class="field">
		<label class="label">First Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="First Name" name="first_name" value="<%=resultSet.getString("first_name") %>" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Last Name</label>
		<div class="control">
		<input class="input" type="text" placeholder="Last Name" name="last_name" value="<%=resultSet.getString("last_name") %>" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Email Address</label>
		<div class="control">
		<input class="input" type="text" placeholder="Email Address" name="email_address" value="<%=resultSet.getString("email_address") %>" required>
		</div>
	</div>
	
	<div class="field">
		<label class="label">Contact Number</label>
		<div class="control">
		<input class="input" type="text" placeholder="Contact Number" name="contact_number" value="<%=resultSet.getString("contact_number") %>">
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