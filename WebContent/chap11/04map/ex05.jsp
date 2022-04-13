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
Map<String, List<String>> map = new HashMap<>();
map.put("cars", Arrays.asList("tesla", "kia", "hyundai"));
map.put("coffee", Arrays.asList("latte", "espresso", "capuccino"));

pageContext.setAttribute("values", map);
%>

<%-- tesla, kia, hyundai, latte, espresso, capuccino가 출력되도록 el을 사용해서 코드 작성 --%>

<p>${values.cars[0] }</p>
<p>${values.cars[1] }</p>
<p>${values.cars[2] }</p>
<p>${values.coffee[0] }</p>
<p>${values.coffee[1] }</p>
<p>${values.coffee[2] }</p>
</body>
</html>