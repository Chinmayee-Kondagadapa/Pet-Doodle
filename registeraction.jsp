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
String name=request.getParameter("uname");
String password=request.getParameter("pwd");
String mobile=request.getParameter("mob");
String email=request.getParameter("email");
String address=request.getParameter("addr");
%>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into user values('"+name+"','"+password+"','"+mobile+"','"+email+"','"+address+"')");
if(i>0){
%>
<h1>REGISTERED SUCCESFULLY</h1>
click here to <a href="login.html"> login</a>
<%
}
%>



</body>
</html>