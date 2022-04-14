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
	<h1>논리연산자 : &&, ||, !</h1>
	<h1>and, or, not</h1>
	
	<h3>${true && true }</h3> <%-- 두항이 모두 true일때 결과가 true --%>
	<h3>${true && false }</h3> <%-- 두항이 모두 true일때 결과가 true --%>
	<h3>${false && true }</h3> <%-- 두항이 모두 true일때 결과가 true --%>
	<h3>${false && false }</h3> <%-- 두항이 모두 true일때 결과가 true --%>
	
	<hr />
	
	<h3>${true and true }</h3> <%-- 두항이 모두 true일때 결과가 true --%>
	<h3>${true and false }</h3> <%-- 두항이 모두 true일때 결과가 true --%>
	<h3>${false and true }</h3> <%-- 두항이 모두 true일때 결과가 true --%>
	<h3>${false and false }</h3> <%-- 두항이 모두 true일때 결과가 true --%>
	
	<hr />
	
	<h3>${true || true }</h3> <%-- 두항이 모두 false일때만 결과가 false --%>
	<h3>${true || false }</h3> <%-- 두항이 모두 false일때만 결과가 false --%>
	<h3>${false || true }</h3> <%-- 두항이 모두 false일때만 결과가 false --%>
	<h3>${false || false }</h3> <%-- 두항이 모두 false일때만 결과가 false --%>
	
	<hr />
	
	<h3>${! true}</h3> <%-- false는 true로, true는 false로 --%>
	<h3>${! false}</h3> 
	<hr />
	<h3>${false || true }</h3> 
	<h3>${false || false }</h3> 
</body>
</html>