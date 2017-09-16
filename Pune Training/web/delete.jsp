 <%@page import="java.sql.*"%>
 <%@ page import="java.io.*,java.util.*" %>

<%
	String id = request.getParameter("deleteid");

	String host = "jdbc:mysql://localhost:3306/";
	String dbName = "pune";
	String username = "root";
	String pass = "";
	String url = host + dbName + "?user=" + username + "&password="
			+ pass;

	try {

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url);
		Statement stmt = con.createStatement();
		String sql=("delete from binfo where bid= '" + id
						+ "'");
// 		out.println("delete from binfo where bid= '" + id
// 				+ "'");
		ResultSet rs = stmt
				.executeQuery("delete from binfo where bid= '" + id
						+ "'");

		stmt.close();
		con.close();
	} catch (Exception e) {
		out.println("e" + e);
	}
%>
<%

	response.sendRedirect("view.jsp");
%>
