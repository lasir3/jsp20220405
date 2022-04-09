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
<%
Object obj = request.getAttribute("movieMap");
Map<String, String> map = (Map<String, String>) obj;
%>

<!-- http://localhost:8080/jsp20220405/chap07/forward/ex05from.jsp -->
<%-- 오류없이 20, 21 줄 출력되도록 ex05from.jsp를 작성 --%>
<p><%= map.get("movie1") %></p>
<p><%= map.get("movie2") %></p>

</body>
</html>