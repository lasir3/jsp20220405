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
	<h1>EL (Expression Language)</h1>
	
	<p>작성법 : \${attribute}</p>
	
	<%
	pageContext.setAttribute("pageAttr1", "PAGE ATTRIBUTE1");
	%>
	
	<p>
		<%= pageContext.getAttribute("pageAttr1") %>
	</p>
	<p> <!-- 간편하게 attribute를 꺼낼 수 있다 -->
		${pageAttr1 }
	</p>
</body>
</html>