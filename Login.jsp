<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<%@ page import="java.sql.*"%>

	<%@ page import="javax.sql.*"%>
	<%
String userid=request.getParameter("usr");
	session.putValue("userid",userid);
	String pwd=request.getParameter("pwd");
	
	Connection coronoDBConnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/CORONO", "root", "root");
	Statement st=coronoDBConnection.createStatement();
	ResultSet rs=st.executeQuery("select * from users where userid="+userid+"");
	
	if(rs.next()){
	if(rs.getString(2).equals(pwd))
	{
		out.println("Welcome" + userid);
	}
	else
	{
		out.println("Invalid password try again");
	}
	}
	else
		%>



	<a href="index.html">Home</a>
	<a href="transaction.html">Transaction</a>
	<a href="view transaction.jsp">View Transaction</a>

</body>
</html>