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
	<h1>삼항 연산자</h1>
	<h1>1항 ? 2항 : 3항</h1>
	<h1>연산결과는 2항 또는 3항</h1>
	<h1>1항이 true이면 2항이 연산결과</h1>
	<h1>1항이 false이면 3항이 연산결과</h1>
	
	<p>${ (3 > 5) ? "hello" : "spring" }</p>
</body>
</html>