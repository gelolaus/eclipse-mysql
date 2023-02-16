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
	
	<title>Retriever</title>

	<link rel="stylesheet" href="styles.css">
</head>

<body>

<div class="box" id="retrievebox" style="overflow-y:auto;">

<table class="table is-bordered is-striped block" style="width: 100%;">

		<thead>
			<tr>
			<th><abbr title="Contact ID">CNTID</abbr></th>
			<th><abbr title="Company Name">CMPNY</abbr></th>
			<th><abbr title="Last Name">LNAME</abbr></th>
			<th><abbr title="First Name">FNAME</abbr></th>
			<th><abbr title="Email Address">EMAIL</abbr></th>
			<th><abbr title="Job Title">TITLE</abbr></th>
			<th><abbr title="Business Phone">BZPHN</abbr></th>
			<th><abbr title="Home Phone">HMPHN</abbr></th>
			<th><abbr title="City Lived">CITYL</abbr></th>
			<th>Update</th>
			<th>Delete</th>
			</tr>
		</thead>

<!-- This is the code -->

<%
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		
	}

	catch (ClassNotFoundException e) {
		
		e.printStackTrace();
		
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	try {
		
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/contacts_db","root","Love,@funjai_gr");
		statement = connection.createStatement();
		String sql = "SELECT * FROM contact_details_tbl";
		
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()) {
			
%>

		<tbody>
			<tr class="active-row">
			<td><%=resultSet.getString("contact_id") %></td>
			<td><%=resultSet.getString("company_name") %></td>
			<td><%=resultSet.getString("last_name") %></td>
			<td><%=resultSet.getString("first_name") %></td>
			<td><%=resultSet.getString("email_address") %></td>
			<td><%=resultSet.getString("job_title") %></td>
			<td><%=resultSet.getString("business_phone") %></td>
			<td><%=resultSet.getString("home_phone") %></td>
			<td><%=resultSet.getString("city_lived") %></td>

			
			<td><a href="update.jsp?contact_id=<%=resultSet.getString("contact_id")%>"><button class="button is-success">Update</button></a></td>
			<td><a href="delete.jsp?contact_id=<%=resultSet.getString("contact_id")%>"><button class="button is-danger">Delete</button></a></td>
			</tr>
		</tbody>

			
			
<%
		}
		
	}
	
	catch (Exception e) {
		
		e.printStackTrace();
		
	}
	
%>
	


<!-- This is the table -->

	</table>
	
		<div class="">
		
			<div class="block">
				<a href="form.jsp"><button class="button is-success" style="width: 100%;'">Add a new record</button></a>
			</div>
		
			<div class="block">
				<a href="index.jsp"><button class="button is-danger" style="width: 100%;'">Go home</button></a>
			</div>
			
		</div>
		
	</div>

</body>

</html>