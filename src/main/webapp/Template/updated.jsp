<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>

<%
String id = request.getParameter("user_id");
String first_name = request.getParameter("first_name");
String last_name = request.getParameter("last_name");
String email_address = request.getParameter("email_address");
String contact_number = request.getParameter("contact_number");

if(id != null) {
	
		Connection con = null;
		PreparedStatement ps = null;
		int personID = Integer.parseInt(id);
		
	try {
		
		Class.forName(driverName);
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/template_db","root","Love,@funjai_gr");
		String sql="UPDATE user_info_tbl SET first_name=?,last_name=?,email_address=? contact_number=? where user_id=" + id;
		ps = con.prepareStatement(sql);
		ps.setString(1,first_name);
		ps.setString(2,last_name);
		ps.setString(3,email_address);
		ps.setString(4,contact_number);
		int i = ps.executeUpdate();
		
	if(i > 0) {
		
		out.print("Record Updated Successfully");
		response.sendRedirect("retrieve.jsp");
		
	} else {
		out.print("There is a problem in updating Record.");
	}
		
	} catch(SQLException sql) {
		
		request.setAttribute("error", sql);
		out.println(sql);
	}
}
%>
<a href="retrieve.jsp">Back to Results</a>