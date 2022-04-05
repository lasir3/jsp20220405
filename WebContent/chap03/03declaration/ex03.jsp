<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%!
private int triple(int num, int i){
	return num * i;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>구구단 3단</h1>
<%
for (int i = 1; i <=9; i++) {
%>
	<%= 3 + " X " + i + " = " + triple(3, i) %>
	<br />
<%
}
%>
</body>
</html>