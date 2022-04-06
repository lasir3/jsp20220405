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

<h1>요청파라미터 (request paramter)</h1>
<h3>?name=donald&age=30</h3>

<h3>name 파라미터 : <%= request.getParameter("name") %></h3>
<h3>age 파라미터 : <%= request.getParameter("age") %></h3>

</body>
</html>