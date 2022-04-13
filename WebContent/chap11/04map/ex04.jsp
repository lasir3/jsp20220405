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
List<String> list1 = new ArrayList<>();
list1.add("spring");
list1.add("summer");
list1.add("fall");

List<String> list2 = new ArrayList<>();
list2.add("son");
list2.add("park");
list2.add("cha");

map.put("season", list1);
map.put("names", list2);

pageContext.setAttribute("map", map);
%>

<p>${map.season[0] }</p>
<p>${map.season[1] }</p>
<p>${map.season[2] }</p>
<p>${map.names[0] }</p>
<p>${map.names[1] }</p>
<p>${map.names[2] }</p>  
</body>
</html>