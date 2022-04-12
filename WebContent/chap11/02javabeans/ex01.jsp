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
	<h1>Attribute가 자바빈일 때...</h1>
	
	<%
	Car car1 = new Car();
	car1.setModel("tesla");
	car1.setPrice(3000);
	
	pageContext.setAttribute("myCar", car1);
	%>
	
	<h2>el 미사용 (자바코드로 출력)</h2>
	<%
	Car myCar = (Car) pageContext.getAttribute("myCar");
	%>
	<p><%= myCar.getModel() %></p>
	<p><%= myCar.getPrice() %></p>
	
	<hr />
	
	<h2>el 사용</h2>
	<p>${myCar.model }</p>
	<p>${myCar.price }</p>
	
</body>
</html>