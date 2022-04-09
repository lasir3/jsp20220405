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
<!-- http://localhost:8080/jsp20220405/chap07/forward/ex06from.jsp -->
<%
String attr1 = (String) request.getAttribute("job");
List<String> attr2 = (List<String>) request.getAttribute("names");
%>

<p><%= attr1 %></p> <%-- null이 아닌 값 출력 --%>

<ul>
<%
for (String name : attr2) {
%>
	<li><%= name %></li> <%-- 3개의 list item 출력 --%>
<%
}
%>
</ul>
</body>
</html>