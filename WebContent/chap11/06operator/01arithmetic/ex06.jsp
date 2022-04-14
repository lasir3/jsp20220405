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
	<p>덧셈 : ${param.number1 + param.number2 }</p>
	<p>뺄셈 : ${param.number1 - param.number2 }</p>
	<p>곱하기 : ${param.number1 * param.number2 }</p>
	<p>나누기 : ${param.number1 / param.number2 }</p>
	<p>나머지 : ${param.number1 % param.number2 }</p>
</body>
</html>