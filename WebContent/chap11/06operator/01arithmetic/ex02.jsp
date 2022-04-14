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
	<h1>수형식의 문자열도 산술연산 가능</h1>
	
	<%
	pageContext.setAttribute("attr1", "3");
	pageContext.setAttribute("attr2", "5");
	%>
	
	<p>${attr1 + attr2 }</p>
	<p>${attr1 - attr2 }</p>
	<p>${attr1 * attr2 }</p>
	<p>${attr1 / attr2 }</p>
	<p>${attr1 % attr2 }</p>
</body>
</html>