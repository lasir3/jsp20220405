<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.*" %> %>
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
Map<String, Object> map = new HashMap<>();

map.put("list", Arrays.asList("tesla", "kia"));
map.put("cars", new Car("hyundai", 3000));

pageContext.setAttribute("map", map);
%>

<p>${map.list[0] }</p>
<p>${map.list[1] }</p>
<p>${map.cars.model }</p>
<p>${map.cars.price }</p>
</body>
</html>