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
<jsp:include page="ex14page.jsp">
	<jsp:param value="1" name="start" />
	<jsp:param value="10" name="end" />
</jsp:include>

<jsp:include page="ex14page.jsp">
	<jsp:param value="11" name="start" />
	<jsp:param value="20" name="end" />
</jsp:include>

<jsp:include page="ex14page.jsp">
	<jsp:param value="21" name="start" />
	<jsp:param value="30" name="end" />
</jsp:include>
</body>
</html>