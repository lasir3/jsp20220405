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

<title>Insert title here</title>
</head>
<body>
	<c:forEach begin="10" end="13" var="i" varStatus="status">
		<p>begin, ${status.begin }</p>
		<p>end, ${status.end }</p>
		<p>count, ${status.count }</p>
		<p>index, ${status.index }</p>
		<p>first? ${status.first }</p>
		<p>last? ${status.last }</p>
		
		<hr />
		
		<%-- 
		varStatus : LoopTagStatus
		몇번째 loop ?
		몇번 index?
		첫번째 loop ?
		마지막 loop ?
		
		등의 상태정보를 가진 attribute 명 
		 --%>
	</c:forEach>
</body>
</html>












