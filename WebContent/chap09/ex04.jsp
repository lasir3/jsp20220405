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
	<h1>쿠키, http only</h1>
	<%
	Cookie cookie = new Cookie("cookie4", "value4");
	
	// 기본값 : 자바스크립트에서 접근 가능
	
	cookie.setHttpOnly(true);
	response.addCookie(cookie);
	%>
	
	<div id="cookie">
	</div>
	<script>
	const cookies = document.cookie;
	
	document.getElementId("cookie").textContent = ">" + cookies;
	</script>
</body>
</html>