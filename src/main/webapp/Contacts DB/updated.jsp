``
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%
String id = request.getParameter("contact_id");
String last_name = request.getParameter("last_name");
String first_name = request.getParameter("first_name");
String email_address = request.getParameter("email_address");
String job_title = request.getParameter("job_title");
String business_phone = request.getParameter("business_phone");
String home_phone = request.getParameter("home_phone");
String city_lived = request.getParameter("city_lived");

if (id != null) {
	Connection con = null;
	PreparedStatement ps = null;
	int personID = Integer.parseInt(id);
	try {
		Class.forName(driverName);
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/contacts_db", "root", "Love,@funjai_gr");
		String sql = "UPDATE contact_details_tbl SET contact_id=?,last_name=?,first_name=?,email_address=?,job_title=?,business_phone=?,home_phone=?,city_lived=? WHERE contact_id=" + id;
		ps = con.prepareStatement(sql);
		ps.setString(1, id);
		ps.setString(2, last_name);
		ps.setString(3, first_name);
		ps.setString(4, email_address);
		ps.setString(5, job_title);
		ps.setString(6, business_phone);
		ps.setString(7, home_phone);
		ps.setString(8, city_lived);
		int i = ps.executeUpdate();
		if (i > 0) {
	out.print("Record Updated Successfully");
	response.sendRedirect("retrieve.jsp");

		} else {
	out.print("There is a problem in updating Record.");
		}
	} catch (SQLException sql) {
		request.setAttribute("error", sql);
		out.println(sql);
	}
}
%>
<a href="retrieve.jsp">Back to Results</a>
``