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
	<h1>session time out</h1>
	<h2>id : <%= session.getId() %></h2>
	
	<%
	Date date = new Date(session.getLastAccessedTime());
	java.text.DateFormat formatter = new java.text.SimpleDateFormat("HH:mm:ss.SSS");
	formatter.setTimeZone(TimeZone.getTimeZone("Asia/Seoul"));
	String dataFormatted = formatter.format(date);
	%>
	
	<h2>마지막 접근: <%= dataFormatted %></h2>
</body>
</html>