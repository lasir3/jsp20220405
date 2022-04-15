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
	<h1>로그인</h1>
	
	<c:if test="${param.error }" >
		<p class="text-danger">아이디나 패스워드가 일치하지 않습니다. </p>
	</c:if>
	
	<form action="ex06loginProcess.jsp" method="post">
	아이디 : <input type="text" name="id" value="donald" /> <br />
	암호 : <input type="password" name="pw" /> <br />
	<input type="submit" value="로그인" />
	</form>
	
</body>
</html>