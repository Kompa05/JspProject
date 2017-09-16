<%@ page language="java" import="java.sql.*"%>

<%
	String host ="jdbc:mysql://localhost:3306/";
	String dbName ="check";
	String username ="root";
	String password ="";
    String url=host+dbName+"?user="+username+"&password="+password;
    
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    
    
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection(url);
    	Statement stmt=con.createStatement();
    	
    	String sql=("INSERT INTO login(fname,lname,uname,pass) VALUES('"+fname+"','"+lname+"','"+uname+"','"+pass+"')");
    	int i=stmt.executeUpdate(sql);
    	if(i>0)
    	{
    		response.sendRedirect("Thankyou.html");	   
    	}
    	else{
    		
    		out.println("not inserted");
    	}
    	
    }
    catch(ClassNotFoundException e)
    {
    	out.println("not Exception");
    	
    }
    catch(SQLException e)
    {
    	out.println("sql Exception");
    	
    }


%>