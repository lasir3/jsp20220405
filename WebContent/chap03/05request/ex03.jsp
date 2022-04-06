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
String name = request.getParameter("name");
String greeting = "";
if (name == null) {
	greeting = "손님, 이름을 입력해주세요";
} else {
	greeting = name + "님 반갑습니다";
}
%>

<h1><%= greeting %></h1>

</body>
</html>










