<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="addquery.jsp" method="post">
<table border="0">
	<tr><td>Movie Name:</td><td><input type="text" name="mname" id="mname" size="30"></td></tr>
	<tr><td>Director Name</td><td><input type="text" name="dname" id="dname" size="30"></td></tr>
	<tr><td>Actor Name:</td><td><input type="text" name="aname" id="aname" size="30"></td></tr>
	<tr><td>Rating:</td><td><input type="text" name="rating"></td></tr>
	<tr><td>Genre:</td><td><input type="text" name="genre"></td></tr>
	<tr><td>Language:</td><td><input type="text" name="language"></td></tr>
	<tr><td>Date:</td><td><input type="text" name="date"></td></tr>
	<tr><td><button type="submit" value="Submit">Submit</button></td></tr>
</table>
</form>
<a href="front.jsp">Home</a>
</body>
