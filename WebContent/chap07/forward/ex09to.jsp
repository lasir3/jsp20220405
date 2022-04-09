<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
<%-- 오류없이 null 아닌 값 출력 --%>
<%-- ex09from.jsp 작성 --%>
<%-- 요청 주소 : http://localhost:8080/jsp20220405/chap07/forward/ex09from.jsp --%>
<%
Car car1 = (Car) request.getAttribute("myCar");
Car car2 = (Car) request.getAttribute("yourCar");
%>

<p><%= car1.getName() %> : <%= car1.getPrice() %></p>
<p><%= car2.getName() %> : <%= car2.getPrice() %></p>
</body>
</html>














