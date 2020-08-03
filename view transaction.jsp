<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Transaction</title>
</head>
<body>
<%@ page import="java.sql.*"%>

	<%@ page import="javax.sql.*"%>
	<%

	
	Connection coronoDBConnection=DriverManager.getConnection("jdbc:mysql://localhost:3306/CORONO", "root", "root");
	Statement st=coronoDBConnection.createStatement();
	ResultSet rs=st.executeQuery("select * from transaction");
	System.out.println("To_AccountNo \t\t  Amount");
	while(rs.next()){
		
			System.out.println(rs.getString("To_AccountNo") + ", " + rs.getString("Amount"));
		
	}
		%>



	<a href="index.html">Home</a>
	<a href="transaction.html">Transaction</a>
	<a href="view transaction.jsp">View Transaction</a>

</body>
</html>