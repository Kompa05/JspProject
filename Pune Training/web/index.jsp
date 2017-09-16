<%@ page language="java" import="java.sql.*"%>
<%
	String host = "jdbc:mysql://localhost:3306/";
	String dbName = "pune";
	String username = "root";
	String pass = "";
	String url = host + dbName + "?user=" + username + "&password="
			+ pass;

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url);
	Statement stmt = con.createStatement();
	ResultSet rs = stmt.executeQuery("select * from info ");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pune Training</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
	<div id="header">
		<a href="#"><img src="images/logo.png"
			title="Affiliate Promo logo" id="logo" alt="Logo" /></a>
		<ul id="navBar">
			<li class="current"><a href="index.html">Home</a></li>
			<li><a href="#">It Training</a></li>
			<li><a href="#">About us</a></li>
			<li><a href="#">Contact us</a></li>
			<li><a href="Register.html">Register</a></li>
		</ul>
	</div>
	<div id="welcomeMessage">
		<h1>Welcome to Pune Training</h1>
		<p>
			<span>punetraining.com</span> is a leading portal for corporate
			business that will help you monetize your work to the most level you
			could reach.
		</p>
		<p>
			Lorem ipsum dolor sit amet, consectetur adip, <span>Yourbusiness.com</span>
			will give you a new way to look at your business and lead it to all
			new horizons.
		</p>
	</div>
	<div id="wrapper">
		<div id="secWrapper">
			<div id="container" class="clearfix">
				<div id="mainCol" class="clearfix">
					<div id="services">
						<h3>Our Services</h3>
						<ul>
							<li>
								<h4>Classroom Trainings</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua.</p>
							</li>
							<li>
								<h4>Online Trainings</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua.</p>
							</li>
							<li>
								<h4>Demo Class Schedules</h4>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua.</p>
							</li>
						</ul>
					</div>
					<h3 id="why">List of all Institute..!!</h3>
					<ul id="maincon">
						<%
							while (rs.next()) {
								String primaryKey = rs.getString(1);
						%>
						<li class="clearfix">

							<h2>
								<%=rs.getString("insname")
								%>
							</h2>
							<p>
								<b>Mobile:</b>&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("mobile")
							%></br> <b>Area:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=rs.getString("area")
							%></br>
								<b>Address:</b>&nbsp;&nbsp;<%=rs.getString("address")
							%></br>

							</p>
							<p><a href ="viewalldetail.jsp?deleteid=<%=primaryKey%>">View more</a></p>
						</li>
						<%
							}
						%>

					</ul>

				</div>
				<div id="secCol">
					<fieldset id="login">
						<h4>Members login</h4>
						<form action="checkLogin.jsp">
							<p class="clearfix">
								<label for="username">Username</label> <input name="user"
									id="username" type="text" value="" required />
							</p>
							<p class="clearfix">
								<label for="password">Password</label> <input name="pwd"
									id="password" type="password" value="" required />
							</p>

							<input name="submit" id="submit" type="submit" value="" />
							</p>
						</form>
						Not a member yet? <a href="register.html">Register now!</a>
						</p>
					</fieldset>
					<h3 id="news">Latest News</h3>
					<ul>
						<li class="clearfix">
							<h4>
								<a href="#">News title goes here</a>
							</h4> <span>19 November, 2008</span>
							<p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed
								do eiusmod tempor incididunt ut labore et dolore magna aliqua.
								Ut enim ad minim niam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat.</p> <a href="#"
							class="more">Read more</a>
						</li>
						<li class="clearfix">
							<h4>
								<a href="#">News title goes here</a>
							</h4> <span>19 November, 2008</span>
							<p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed
								do eiusmod tempor incididunt ut labore et dolore magna aliqua.
								Ut enim ad minim niam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat.</p> <a href="#"
							class="more">Read more</a>
						</li>
					</ul>
					<h3 id="test">Testimonials</h3>
					<ul>
						<li class="clearfix">
							<p>Lorem ipsum dolor sit amet, consectetur adipis elit, sed
								do eiusmod tempor incididunt ut labore et dolore magna aliqua.
								Ut enim ad minim niam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat.</p>
							<p class="test">
								<span>Lorem ipsum</span>, <a href="#">dolorsit.com</a>
							</p>
						</li>
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
