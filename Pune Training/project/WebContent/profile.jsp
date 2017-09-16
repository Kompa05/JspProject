<%@ page language="java" import="java.sql.*"%>
<%
	String a=session.getAttribute("userid").toString();
	
	String host = "jdbc:mysql://localhost:3306/";
	String dbName = "check";
	String username = "root";
	String password = "";
	String url = host + dbName + "?user=" + username + "&password="
			+ password;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url);
	Statement stmt = con.createStatement();
	 ResultSet rs=stmt.executeQuery("select * from login where uid='"+a+"'");
	%>
<%
   if((session.getAttribute("userid")==null) ||(session.getAttribute("userid")==""))
   {
	     
   response.sendRedirect("login.html");	   

   }


%>
<%
	//String a=session.getAttribute("userid").toString();
	//out.println("Welcome"+a);
                        %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


</head>
<body>
	<a href="Logout.jsp">Logout</a>
		<h1>
		 <% while (rs.next()) {
		%>
		Welcome <%=rs.getString("fname")%>
         
        
	
						<table>
						   <tr>
						   	 <td>First Name:</td>
						   	 <td><%=rs.getString("fname")%></td>
						   	 					   		   
						   </tr>
						   <tr>
						   	 <td>Last Name :</td>
						   	 <td><%=rs.getString("lname")%></td>
						   	 					   		   
						   </tr>
						   <tr>
						   	 <td>User Name :</td>
						   	 <td><%=rs.getString("uname")%></td>
						   	 					   		   
						   </tr>
						  
						   </table>	   
						   	
						  
						
						
						<%} %>
						

					
</body>
</html>
