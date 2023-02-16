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

<div class="box" id="retrievebox">

<table class="table is-bordered is-striped">

		<thead>
			<tr>
			<th><abbr title="User ID">UID</abbr></th>
			<th><abbr title="First Name">FNM</abbr></th>
			<th><abbr title="Last Name">LNM</abbr></th>
			<th><abbr title="Email Address">EML</abbr></th>
			<th><abbr title="Contact Number">CON</abbr></th>
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
		
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/template_db","root","Love,@funjai_gr");
		statement = connection.createStatement();
		String sql = "SELECT * FROM user_info_tbl";
		
		resultSet = statement.executeQuery(sql);
		
		while(resultSet.next()) {
			
%>

		<tbody>
			<tr class="active-row">
			<td><%=resultSet.getString("user_id") %></td>
			<td><%=resultSet.getString("first_name") %></td>
			<td><%=resultSet.getString("last_name") %></td>
			<td><%=resultSet.getString("email_address") %></td>
			<td><%=resultSet.getString("contact_number") %></td>
			<td><a href=""><button class="button is-success">Update</button></a></td>
			<td><a href="delete.jsp?user_id=<%=resultSet.getString("user_id")%>"><button class="button is-danger">Delete</button></a></td>
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
	</div>

</body>

</html>