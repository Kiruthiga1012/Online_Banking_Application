<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transcation</title>
</head>
<body>
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

	String To_AccountNo=request.getParameter("To_AccountNo");
	String Amount=request.getParameter("Amount");
	
	Connection coronoDBConnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online Banking Application", "root", "root");
	Statement st=coronoDBConnection.createStatement();
	ResultSet rs;
	int i=st.executeUpdate("insert into transaction values("+To_AccountNo+","+Amount+")");
 	
	out.println("Transantion successful");
 %>


	<a href="index.html">Home</a>
	<a href="transaction.html">Transaction</a>
	<a href="view transaction.jsp">View Transaction</a>


</body>
</html>

</body>
</html>