<%@page contentType="text/html"%>
 <%@page pageEncoding="UTF-8"%> 
 <%@page import="java.sql.*"%> 
 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
 <html> 
 <head> 
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Example of Java Server Page with JDBC</title> </head> 
  <body> 
  <% String u=request.getParameter("mname"); 
  String p=request.getParameter("dname");
  String k=request.getParameter("aname");
  String rate=request.getParameter("rating");
  String l= rate + "/5";
  String m=request.getParameter("genre");
  String n=request.getParameter("language");
  String o=request.getParameter("date");
	//out.println(u);
  
  try
  { 	String driverClassName = "com.mysql.jdbc.Driver";//JDBC and Relational Databases forum at Coderanch
	Class.forName(driverClassName);
	// Get the connection
	String url = "jdbc:mysql://localhost:3306/movie";
	String us = "root";
	String password = "1234";// your password
	Connection con = DriverManager.getConnection(url,
	us, password);
	if(con==null){System.out.println("Sorry connection cannot be established");}
	//conn.close();
  /* Passing argument through the question mark */
  PreparedStatement ps=con.prepareStatement("insert into detail values(?,?,?,?,?,?,?)") ;
	  ps.setString(1,u); 
	  ps.setString(2,p);
	  ps.setString(3,k);
	  ps.setString(4,l);
	  ps.setString(5,m);ps.setString(6,n);ps.setString(7,o);
	  int i=ps.executeUpdate(); /*Set the Update query command */ 
		out.println("Entry Added");

con.close(); } catch(Exception ex) { out.println(ex); } %>
<br><a href="add.jsp">Add Another entry</a> 
<a href="front.jsp">Home</a>
</body> </html>
