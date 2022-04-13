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
	List<String> list = new ArrayList<>();
	list.add("spring");
	list.add("react");
	list.add("vue");
	list.add("jsp");
	
	pageContext.setAttribute("list", list);
	pageContext.setAttribute("num1", 0);
	pageContext.setAttribute("num2", "1");
	pageContext.setAttribute("n3", 2);
	pageContext.setAttribute("number", 3);
	%>
	
	<p>${list[0] }</p>
	<p>${list[1] }</p>
	<p>${list[2] }</p>
	<p>${list[3] }</p>
	
	<hr />
	<p>${list[num1] }</p>
	<p>${list[num2] }</p>
	<p>${list[n3] }</p>
	<p>${list[number] }</p>
</body>
</html>