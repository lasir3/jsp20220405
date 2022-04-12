<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1></h1>
	
	<%
	// 적절한 자바 코드 작성
	Car c1 = new Car();
	Car c2 = new Car();
	
	c1.setModel("tesla");
	c1.setPrice(7000);
	c2.setModel("volvo");
	c2.setPrice(8000);
	
	pageContext.setAttribute("car1", c1);
	pageContext.setAttribute("car2", c2);
	pageContext.setAttribute("message", "hello world");
	%>
	
	<p>${car1.model }</p> <%-- tesla --%>
	<p>${car1.price }</p> <%-- 7000 --%>
	<p>${car1.available }</p>
	
	<p>${car2.model }</p> <%-- volvo --%>
	<p>${car2.price }</p> <%-- 8000 --%>
	<p>${car2.available }</p>
	
	<p>${message }</p> <%-- hello world --%>
</body>
</html>