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
<!-- http://localhost:8080/jsp20220405/chap03/05request/ex05.jsp?num1=99&num2=88 -->
<%-- num1, num2 파라미터의 값을 더해서 출력하는 코드 작성 --%>
<!-- num1이나 num2 파라미터가 없다면 입력해 달라는 메시지 출력 -->
<%
String num1par = request.getParameter("num1");
String num2par = request.getParameter("num2");

if (num1par == null || num2par == null) {
%>
	<h1>값을 입력하세요</h1>
<%
} else {
	int num1 = Integer.parseInt(num1par);
	int num2 = Integer.parseInt(num2par);
%>
	<h3><%= num1 %> + <%= num2 %> = <%= num1 + num2 %></h3>
<%		
}
%>

</body>
</html>