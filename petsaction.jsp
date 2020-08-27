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
String Breed =request.getParameter("uname");
String Owner =request.getParameter("owner");
String Color=request.getParameter("color");
String Weight=request.getParameter("weight");
%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root","");
Statement st=con.createStatement();
int i=st.executeUpdate("insert into pets values('"+Breed+"','"+Owner+"','"+Color+"','"+Weight+"')");
if(i>0){
%>
<h1>Thanks for your registration of pet</h1>
click here to <a href="home.html"> thanks</a>
<%
}
%>














</body>
</html>