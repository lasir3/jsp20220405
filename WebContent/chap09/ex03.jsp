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
	<h1>쿠키 경로</h1>
	
	<%
	Cookie cookie = new Cookie("my-cookie3", "my-value3");
	// 기본 경로 : 현재 경로	
	
	response.addCookie(cookie);
	%>
	
	<a href="ex04.jsp">같은 경로</a> <br />
	<a href="../chap07/ex01.jsp">다른 경로</a>
</body>
</html>