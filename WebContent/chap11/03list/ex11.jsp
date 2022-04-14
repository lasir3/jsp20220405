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
	<h1>배열도 list 처럼 사용하면 됨</h1>
	
	<%
	String[] arr1 = {"spring", "react", "vue", "angular"};
	pageContext.setAttribute("names", arr1);
	pageContext.setAttribute("index", 3);
	%>
	
	<p>${names[0] }</p>
	<p>${names[1] }</p>
	<p>${names["2"] }</p>
	<p>${names[index] }</p>
</body>
</html>