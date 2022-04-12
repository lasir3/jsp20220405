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
	<h1>Attribute(속성)이 존재하지 않을 때 : 표시안됨</h1>
	
	<%
	pageContext.setAttribute("pageAttr1", "PAGE ATTRIBUTE1");
	%>
	
	<p>${pageAttr1 }</p>
	<p>${pageAttr2 }</p>
	
	<p><%= pageContext.getAttribute("pageAttr2") %></p>
</body>
</html>