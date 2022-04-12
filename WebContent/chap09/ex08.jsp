<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap09.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>새 쿠키 응답 : chap09.Cookies 사용</h1>
	
	<%
	Cookies cookies = new Cookies(request);
	%>
	<p>cookie7 있음? : <%= cookies.exists("cookie7") %></p>
	<p>cookie8 있음? : <%= cookies.exists("cookie8") %></p>
	
	<p>cookie7 값 : <%= cookies.getValue("cookie7") %></p>
	<p>cookie8 값 : <%= cookies.getValue("cookie8") %></p>
</body>
</html>