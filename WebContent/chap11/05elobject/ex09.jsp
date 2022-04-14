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
	<h1>cookie el 객체 : Map&lt;String, String&gt;</h1>
	<%
	Cookie cookie = new Cookie("cookie1", "value1");
	Cookie cookie2 = new Cookie("my-cookie", "value2");
	
	response.addCookie(cookie);
	response.addCookie(cookie2);
	%>
	
	<hr />
	<p>${cookie.cookie1.name }</p>
	<p>${cookie.cookie1.value }</p>
	
	<p>${cookie["my-cookie"].name }</p>
	<p>${cookie["my-cookie"].value }</p>
</body>
</html>