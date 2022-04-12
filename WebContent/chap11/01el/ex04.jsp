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
	<h1>여러 영역에서 중복된 Attribute 명이 존재할때</h1>
	
	<h2>pageContext, request, session, application 순으로 찾음</h2>
	
	<%
	pageContext.setAttribute("attr1", "page attribute1");
	request.setAttribute("attr1", "request attribute1");
	session.setAttribute("attr1", "session attribute1");
	application.setAttribute("attr1", "application attribute1");

	request.setAttribute("attr2", "request attribute2");
	session.setAttribute("attr2", "session attribute2");
	application.setAttribute("attr2", "application attribute2");
	
	session.setAttribute("attr3", "session attribute3");
	application.setAttribute("attr3", "application attribute3");
	
	application.setAttribute("attr4", "application attribute4");
	%>
	
	<p>${attr1 }</p>
	<p>${attr2 }</p>
	<p>${attr3 }</p>
	<p>${attr4 }</p>
	<p>${attr5 }</p>
</body>
</html>