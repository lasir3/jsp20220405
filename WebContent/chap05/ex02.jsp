<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>pageContext : PageContext</h1>
	<h2>하나의 페이지와 관련된 객체</h2>
	<%
	pageContext.setAttribute("movie", "avengers");
	request.setAttribute("song", "butter");
	session.setAttribute("group", "bts");
	application.setAttribute("actor", "lee min ho");
	%>
	
	<%
	String s = (String) pageContext.getAttribute("movie");
	String u = (String) request.getAttribute("song");
	String v = (String) session.getAttribute("group");
	String t = (String) application.getAttribute("actor");

	%>
	
	<p><%= s %></p>
	<p><%= u %></p>
	<p><%= v %></p>
	<p><%= t %></p>
	

</body>
</html>