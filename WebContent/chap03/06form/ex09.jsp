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
<h1>input요소 type="radio"</h1>

<form action="ex10.jsp">
	우편물 <br />
	
	<!-- (input:r+br)*3+input:submit -->
	<input type="radio" name="destination" value="home" id="" /> 집
	<br />
	<input type="radio" name="destination" value="work" id="" /> 직장
	<br />
	<input type="radio" name="destination" value="school" id="" /> 학교
	<br />
	<br />
	성별 <br />
	
	<!-- (input:r+br)*2 -->
	<input type="radio" name="gender" value="man" id="" /> 남
	<br />
	<input type="radio" name="gender" value="woman" id="" /> 여
	<br />
	<input type="submit" value="전송" />

</form>
</body>
</html>