<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>메인 콘텐츠.....</h1>
	
	<c:if test="${not empty sessionScope.username }" var="logedIn">
		<h2>${sessionScope.username }님 반갑습니다.</h2>
		<h2>멤버를 위한 컨텐츠!!</h2>
		<h3><a href="ex08logout.jsp">로그아웃</a></h3>
	</c:if>
	
	<c:if test="${not logedIn}">
		<h2>게스트를 위한 컨텐츠%%</h2>
		<h3><a href="ex05loginForm.jsp">로그인</a></h3>
	</c:if>
		
</body>
</html>