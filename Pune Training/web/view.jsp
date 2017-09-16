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
			<li class="current"><a href="index.html">Home</a></li>
			<li><a href="profile.jsp">My Home</a></li>
			<li><a href="logout.jsp">Logout</a></li>
		</ul>
	</div>
	<div id="welcomeMessage1">
		<h1>
		 <% 
		 
		 while (rs.next()) {
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
						
						
						<table id="rounded-corner" summary="all posts" border="1">

     <tbody>
     	<tr>
        	<th> Id </th>
			<th> Course Name </th>
           	<th>Start Batch Timing</th>
			<th>Fee</th>
			<th>Duration</th>
            <th>Batch Timing</th>
             <th>Delete</th>
              <th>Insert</th>

        </tr>
        <%
        ResultSet rs1=stmt.executeQuery("select * from binfo where id='"+a+"'");
        	while (rs1.next()) {
             String primaryKey = rs1.getString(1);
        %>
         <tr>
         		 <td>
                	<%=primaryKey%>
             	 </td>
            	 <td>
                	<%=rs1.getString("cname")%>
            	 </td>
            	 <td>
                	<%=rs1.getString("sbdate")%>
            	 </td>
            	 <td>
                	<%=rs1.getString("fee")%>
            	 </td>
            	 <td>
                	<%=rs1.getString("duration")%>
            	 </td>
            	 <td>
               	 <%=rs1.getString("btiming")%>
            	 </td>
            	 <td>
					<a href ="delete.jsp?deleteid=<%=primaryKey%>">Delete</a>
                 </td>
                  <td>
					<a href ="addbatch.jsp">insert</a>
                 </td>
          </tr>
          <%}%>

        </tbody>
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
