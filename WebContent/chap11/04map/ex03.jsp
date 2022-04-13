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
Map<String, String> map = new HashMap<>();
map.put("my house", "아파트");
map.put("my car", "기아");
map.put("name", "손흥민");
map.put("커피", "스타벅스");

pageContext.setAttribute("props", map);
%>

<%-- 아파트, 기아, 손흥민, 스타벅스를 el을 활용해서 출력하는 코드 작성 --%>
<p>${props["my house"] }</p>
<p>${props["my car"] }</p>
<p>${props.name}</p>
<p>${props["커피"]}</p>
</body>
</html>