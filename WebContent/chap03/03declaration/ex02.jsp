<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%!
	private int doubling(int a) {
	return a * 2;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>두배로 출력</h1>

<%
for (int i = 1; i <= 5; i++) {
	out.print(doubling(i)); 
	// 매개값 * 2를 리턴하는 doubling 메소드 작성
	out.print("<br>");
}
%>


</body>
</html>