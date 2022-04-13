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
<%
Map<String, Car> map = new HashMap<>();
map.put("car1", new Car("tesla", 1000));
map.put("car2", new Car("kia", 500));

pageContext.setAttribute("cars", map);
%>

<p>${cars.car1.model }</p>
<p>${cars.car1.price }</p>
<p>${cars.car2.model }</p>
<p>${cars.car2.price }</p>
</body>
</html>