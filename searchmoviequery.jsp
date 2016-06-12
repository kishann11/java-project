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

	//out.println(u);
	
  try
  { 	String driverClassName = "com.mysql.jdbc.Driver";//JDBC and Relational Databases forum at Coderanch
	Class.forName(driverClassName);
	// Get the connection
	String url = "jdbc:mysql://localhost:3306/movie";
	String us = "root";
	String password = "1234";// your password
	String query = null;
	query = "select * from detail Where " + "movie = ?";
	Connection con = DriverManager.getConnection(url,us, password);
	if(con==null){System.out.println("Sorry connection cannot be established");}
	//conn.close();
  /* Passing argument through the question mark */
  PreparedStatement ps=con.prepareStatement(query) ;
	  ps.setString(1,u); 
	 ResultSet resultSet = ps.executeQuery(); /*Set the Update query command */ 
	   out.println("<html><body><h3>The query has following results : </h3>");
	   out.println("<hr></br><table cellspacing='0' cellpadding='5' border='1'>");
	   out.println("<tr>");
	   out.println("<td><b>Movie Name</b></td>");
	   out.println("<td><b>Director Name</b></td>");
	   out.println("<td><b>Actor Name</b></td>");
	   out.println("<td><b>Rating</b></td>");
	   out.println("<td><b>Genre</b></td>");
	   out.println("<td><b>Language</b></td>");
	   out.println("<td><b>Date</b></td>");
	   out.println("</tr>");
	 
	   while(resultSet.next()) {
	    out.println("<tr>");
	    out.println("<td>"+resultSet.getString(1) + "</td>");
	    out.println("<td>"+resultSet.getString(2) + "</td>");
	    out.println("<td>"+resultSet.getString(3) + "</td>");
	    out.println("<td>"+resultSet.getString(4) + "</td>");
	    out.println("<td>"+resultSet.getString(5) + "</td>");
	    out.println("<td>"+resultSet.getString(6) + "</td>");
	    out.println("<td>"+resultSet.getString(7) + "</td>");
	    out.println("</tr>");
	 
	   }
	 
	   out.println("</table></br><hr></body></html>");
		

con.close(); } 
  catch(Exception ex) { out.println(ex); } %> 
  <a href="searchmovie.jsp">Search Another Movie</a>
  <a href="front.jsp">Home</a></body> </html>
