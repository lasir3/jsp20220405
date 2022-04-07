<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>INFO</title>
</head>
<body>
include 전 name 파라미터 값: <%= request.getParameter("name") %>

<hr />

<jsp:include page="7_09body_sub.jsp">
	<jsp:param value="최범균" name="name"/>
</jsp:include>
<hr />

include 후 name 파라미터 값: <%= request.getParameter("name") %>

</body>
</html>