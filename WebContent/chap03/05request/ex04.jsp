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
<%
String danStr = request.getParameter("dan");

if (danStr == null) {
%>
	<h1>단 번호를 입력해주세요</h1>
<%
} else {
	int dan = Integer.parseInt(danStr);
	
	for (int i = 1; i <= 9; i++) {
%>
	<h3><%= dan %> X <%= i %> = <%= dan * i %></h3>
<%		
	}
}
%>
</body>
</html>