<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>
	<a href="ex01.jsp">ex01 (상대경로)</a>
	<br />
	<a href="${pageContext.request.contextPath }/chap12/04url/ex01.jsp">ex01 (절대경로)</a>
	<br />
	
	<!-- 상대 경로 -->
	<c:url value="ex01.jsp" var="ex01ReUrl"></c:url>
	
	<a href="${ex01ReUrl }">ex01 (상대경로 c:url 사용)</a>
	<br />
	<!-- 절대 경로 -->
	<c:url value="/chap12/04url/ex01.jsp" var="ex01AbsUrl"></c:url> <!-- contextPath가 자동으로 붙는다 -->
	<a href="${ex01AbsUrl }">ex01 (절대경로 c:url 사용)</a>
</body>
</html>