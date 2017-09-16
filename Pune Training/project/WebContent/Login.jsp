<%@ page language="java" import="java.sql.*"%>
<%
	String host = "jdbc:mysql://localhost:3306/";
	String dbName = "check";
	String username = "root";
	String password = "";
	String url = host + dbName + "?user=" + username + "&password="
			+ password;
	try {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url);
		Statement stmt = con.createStatement();
		ResultSet rs = stmt
				.executeQuery("select * from login where uname='"
						+ uname + "' and pass='" + pass + "'");
	
		if (rs.next()) {
		
			String userid = rs.getString(1);
			session.setAttribute("userid", userid);
			response.sendRedirect("profile.jsp");
		
		} else 
		{
			out.println("Wrong User name  and Password...!!");
	    }
	} catch (Exception e) {
		System.out.println(e);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


</head>
<body>
	<a href="Login.html">Go Back</a>
	
	</body>
	</html>


