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
	<h1>ex09.jsp</h1>
	<%-- 
	1. ex08.jsp 먼저 요청
	2. ex09.jsp 두번째 요청
		
	 --%>
	<%
	List<String> list = (List<String>) session.getAttribute("names");
	out.print("<ul>");
	for(String name : list) {
		out.print("<li>");
		out.print(name); // list item 3개 출력
		out.print("</li>");
	}
	
	out.print("</ul>");
	%>
</body>
</html>