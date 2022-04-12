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
	<h1>쿠키값 변경</h1>
	
	<%
	Cookie[] cookies = request.getCookies();
	
	for (Cookie cookie : cookies) {
		if (cookie.getName().equals("cookie4")) {
			cookie.setValue("new-value4");
			response.addCookie(cookie);
		}
	}
	%>
	<a href="ex05.jsp">쿠키 값 보기</a>
</body>
</html>