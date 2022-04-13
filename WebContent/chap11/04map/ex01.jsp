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
<h1>Attribute가 Map 일 때...</h1>
<%
Map<String, String> map = new HashMap<>();
map.put("singer", "서태지");
map.put("soccer", "손흥민");
map.put("group", "bts");
map.put("my car", "tesla");

pageContext.setAttribute("map", map);
%>

<p>${map.singer }</p> <%-- 서태지 --%>
<p>${map.soccer }</p> <%-- 손흥민 --%>
<p>${map.group }</p> <%-- bts --%>
<%-- <p>${map.my car}</p> --%> <%-- 띄어쓰기안됨 --%>

<hr />

<p>${map["singer"] }</p> <%-- 서태지 --%>
<p>${map["soccer"] }</p> <%-- 손흥민 --%>
<p>${map["group"] }</p> <%-- bts --%>
<p>${map["my car"] }</p> <%-- tesla --%>
</body>
</html>