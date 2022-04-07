<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String text = request.getParameter("text");
String reversed = new StringBuffer(text).reverse().toString();
%>
<textarea name="desc" id="" cols="30" rows="10"><%= reversed %></textarea>

<%-- <p style="white-space:pre;"><%= text %></p> --%>

</body>
</html>