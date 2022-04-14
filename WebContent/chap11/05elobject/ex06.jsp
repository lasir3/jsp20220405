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
	<form action="ex07.jsp">
		<!-- (input[name]+br)*2+(input:c[name])*3+br+input:submit -->
		<h3>이름</h3>
		<input type="text" name="name" />
		<br />
		<h3>주소</h3>
		<input type="text" name="address" />
		<br />
		<h3>좋아하는 음식</h3>
		<input type="checkbox" name="food" value="pizza" /> 피자
		<input type="checkbox" name="food" value="coffee" /> 커피
		<input type="checkbox" name="food" value="chocolate" /> 초콜릿
		<br />
		<input type="submit" value="전송" />
	</form>
</body>
</html>