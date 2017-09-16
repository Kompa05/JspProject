<%@ page language="java" import="java.sql.*"%>
<%
	String host = "jdbc:mysql://localhost:3306/";
	String dbName = "pune";
	String username = "root";
	String pass = "";
	String url = host + dbName + "?user=" + username + "&password="
			+ pass;
	try {
		String user = request.getParameter("user");
		String pwd = request.getParameter("pwd");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt
				.executeQuery("select * from info where email='"
						+ user + "' and password='" + pwd + "'");
	
		if (rs.next()) {
		
			String userid = rs.getString(1);
			session.setAttribute("userid", userid);
			response.sendRedirect("profile.jsp");
		
		} else 
		{
			out.println("google");
	    }
	} catch (Exception e) {
		System.out.println(e);
	}
%>


