<%@ page language="java" import="java.sql.*"%>

<%
	String host ="jdbc:mysql://localhost:3306/";
	String dbName ="pune";
	String username ="root";
	String pass ="";
    String url=host+dbName+"?user="+username+"&password="+pass;
    
    String insname=request.getParameter("insname");
    String cperson=request.getParameter("cperson");
    String email=request.getParameter("email");
    String pwd=request.getParameter("password");
    String course=request.getParameter("course");
    String ctype=request.getParameter("ctype");
    String mobile=request.getParameter("mobile");
    String area=request.getParameter("area");
    String address=request.getParameter("address");
    
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection(url);
    	Statement stmt=con.createStatement();
    	//String sql=("INSERT INTO information VALUES(1,'kanishk')");
    	String sql=("INSERT INTO info(insname,cperson,email,password,course,ctype,mobile,area,address) VALUES('"+insname+"','"+cperson+"','"+email+"','"+pwd+"','"+course+"','"+ctype+"','"+mobile+"','"+area+"','"+address+"')");
    	int i=stmt.executeUpdate(sql);
    	if(i>0)
    	{
    		response.sendRedirect("thankyou.html");	   
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