<%@ page language="java" import="java.sql.*"%>
<%
	String a=session.getAttribute("userid").toString();
	
	String host = "jdbc:mysql://localhost:3306/";
	String dbName = "pune";
	String username = "root";
	String pass = "";
	String url = host + dbName + "?user=" + username + "&password="
			+ pass;
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url);
	Statement stmt = con.createStatement();
	 ResultSet rs=stmt.executeQuery("select * from info where id='"+a+"'");
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
<title>Pune Training</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<style>
td {
	height: 40px;
	width: 200px;
}
</style>
</head>
<body>
	<div id="header">
		<a href="#"><img src="images/logo.png"
			title="Affiliate Promo logo" id="logo" alt="Logo" /></a>
		<ul id="navBar">
			<li class="current"><a href="index.jsp">Home</a></li>
			<li><a href="profile.jsp">My Home</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</div>
	<div id="welcomeMessage1">
		<h1>
		 <% while (rs.next()) {
		%>
		Welcome <%=rs.getString("insname")%>
         
         <%} %>
        

</h1>
		
	</div>
	<div id="wrapper">
		<div id="secWrapper">
			<div id="container" class="clearfix">
				<div id="mainCol" class="clearfix">

					
					<p style="font-size:12px; text-align: right; "><a href="addbatch.jsp">Add Batch Timing</a> &nbsp;&nbsp;&nbsp;&nbsp;<a href="view.jsp">View Batch Timing</a></p>
					<ul id="maincon" style="width:940px; font-size:24px; font-family: serif; ">
						
						<form action="insertaddbatch.jsp" method="post">
						<table>
						   <tr>
						   	 <td>Course Name:</td>
						   	 <td><input type="text" name="cname" required></td>
						   	 					   		   
						   </tr>
						   <tr>
						   	 <td>Start batch date</td>
						   	 <td><input type="date" name="sbdate" required></td>
						   	 					   		   
						   </tr>
						   <tr>
						   	 <td>Fee :</td>
						   	 <td><input type="text" name="fee" required></td>
						   	 					   		   
						   </tr>
						   <tr>
						   	 <td>Duration:</td>
						   	 <td><input type="text" name="duration" required></td>
						   	 					   		   
						   </tr>
						   	   
						   	   <tr>
						   	 <td>Batch Timing :</td>
						   	 <td><input type="time" name="btiming" required></td>
						   	 					   		   
						   </tr>
						   <tr>
						   	 <td></td>
						   	 <td><input type="submit" name="submit" value="Submit"></td>
						   	 					   		   
						   </tr>
						
						</form>
						
						</table>

					</ul>

				</div>
				
			</div>
		</div>
	</div>
	<div id="footer">
		<ul>
			<li><a href="#">Home</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
			<li><a href="#">Terms and Conditions</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
			<li><a href="#">Privacy Policy</a>&nbsp;&nbsp;-&nbsp;&nbsp;</li>
			<li><a href="#">Contact Us</a></li>
		</ul>
		<p>Copyrights &copy; 2008 punetraining.com, All Rights Reserved</p>
	</div>
</body>
</html>
