<%@page import="java.sql.*" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
String name=request.getParameter("uname");
String pass=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
Statement st=con.createStatement();
System.out.print(""+name);
ResultSet rs=st.executeQuery("select * from user where Name='"+name+"' and Password= '"+pass+"' ");
while(rs.next()){
	System.out.print(""+name);
	String namee=rs.getString("Name");
	String passwd=rs.getString("Password");
	if(namee.equals(name) && passwd.equals(pass)){
		response.sendRedirect("adoption.html");
		
	}

	else{
%>
  <h1>please enter correct user id and password </h1>
  <% 
  }}}catch(Exception e){
	  e.printStackTrace();
  }
	%>

</body>
</html>