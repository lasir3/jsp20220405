<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>html 코드</h1>
	<h1>out 객체 : javax.servlet.jsp.JspWriter</h1>
	<%
	out.write("안녕");
	
	for (int i = 0; i < 10; i++){
		out.write("<p>반복문</p>");
	}
	%>
</body>
</html>