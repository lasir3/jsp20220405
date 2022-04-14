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
	<%-- 주소창에 적절한 쿼리스트링을 작성 --%>
	<!-- ?season=spring&email=hello@gmail.com&song=butter -->
	<p>${map.season }</p> <%-- spring --%>
	<p>${param.email }</p> <%-- hello@gmail.com --%>
	<p>${param.song }</p> <%-- butter --%>
</body>
</html>