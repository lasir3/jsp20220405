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
<h1>input 요소 type 속성</h1>

<h2>checkbox</h2>
<form action="ex06.jsp">
	<input type="checkbox" name="movie"/> <br />
	<input type="checkbox" name="fruit"/> <br />
	<input type="submit" />
</form>

<hr />

<form action="ex06.jsp">
	<!-- input:c+input:submit -->
	<input type="checkbox" name="agree" id="" /> 개인정보 <br />
	<input type="checkbox" name="accept" id="" /> 광고수신 <br />
	<input type="submit" value="동의" />
</form>



</body>
</html>