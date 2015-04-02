<%@page import="java.util.Date"%>
<%@page import="com.sdzee.beans.ForzaGreen"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>testJSP</title>
</head>
<body>
	<h1>page générée depuis JSP. المغرب</h1>
	<h3><%
		//out.println((String) request.getAttribute("testAttr"));
    String attribut = (String) request.getAttribute("testAttr");
    out.println( attribut );
    //out.println(request.getParameter("nom"));
    ForzaGreen bean = (ForzaGreen) request.getAttribute("forzaGreen");
    out.println( "nom : " + bean.getNom() );
    out.println( "prenom : " + bean.getPrenom());

	%></h3>
	<% out.println("<h3>");
		out.println("Time now is " + new Date());
		out.println("</h3>");
	 %>
	<h3><%  
		System.out.println(request.getRemoteHost());
		//response.sendRedirect( "http://google.com");
		//out.println("dima");
	%></h3>
</body>
</html>