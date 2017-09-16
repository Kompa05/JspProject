<%@ page language="java" import="java.sql.*"%>

<%
    String a=session.getAttribute("userid").toString();

	String host ="jdbc:mysql://localhost:3306/";
	String dbName ="pune";
	String username ="root";
	String pass ="";
    String url=host+dbName+"?user="+username+"&password="+pass;
    
    String cname=request.getParameter("cname");
    String sbdate=request.getParameter("sbdate");
    String fee=request.getParameter("fee");
    String duration=request.getParameter("duration");
    String btiming=request.getParameter("btiming");
 
    
    try{
    	
    	Class.forName("com.mysql.jdbc.Driver");
    	Connection con=DriverManager.getConnection(url);
    	Statement stmt=con.createStatement();
    	//String sql=("INSERT INTO information VALUES(1,'kanishk')");
    	String sql=("INSERT INTO binfo(cname,sbdate,fee,duration,btiming,id) VALUES('"+cname+"','"+sbdate+"','"+fee+"','"+duration+"','"+btiming+"','"+a+"')");
    	int i=stmt.executeUpdate(sql);
    	if(i>0)
    	{
    		 response.sendRedirect("view.jsp");	   	
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