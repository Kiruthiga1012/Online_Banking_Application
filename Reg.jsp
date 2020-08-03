<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<%@ page import="java.sql.*"%>

	<%@ page import="javax.sql.*"%>
	<%
String user=request.getParameter("userid");
	session.putValue("userid",user);
	String pwd=request.getParameter("pwd");
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String email=request.getParameter("email");
	String AccountNo=request.getParameter("AccountNo");
	Connection coronoDBConnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Banking Application", "root", "root");
	Statement st=coronoDBConnection.createStatement();
	ResultSet rs;
	int i=st.executeUpdate("insert into users values("+user+","+pwd+","+fname+","+lname+","+email+", "+AccountNo+")");
 	
	out.println("Registered");
 %>
 
 <a href="Login.html">Login</a><br><br>
 <a href="index.html">Home</a>

</body>
</html>