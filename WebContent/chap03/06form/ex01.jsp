<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>form 요소</h1>

<form action="http://localhost:8080/jsp20220405/chap03/06form/ex02.jsp"> <!-- html Request second element -->

	<input type="text" name="age" value="999"/> 
	<!-- 텍스트 입력란 생성 -->
	
	<br />

	<!-- 
	submit 버튼 클릭시
	form요소의 action 속성으로 이동
	 -->
	<input type="submit" value="전송" />
</form>
</body>
</html>