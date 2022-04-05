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
<h1>expression 표현식 : </h1>
<p>out객체 print 메소드의 argument(매개값)으로 번역</p>
<%= "표현식" %>
<%
// 스크립트릿 
// _jspService 메소드의 명령문
%>

<%
out.print("hello");
out.print("hi");
%>
<%= "hello" %><%= "hi" %>
</body>
</html>