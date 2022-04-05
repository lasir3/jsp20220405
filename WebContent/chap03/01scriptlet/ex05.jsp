
<%-- directive <%@ %> --%>
<!-- page directive -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>임포트 하는 방법</h1>
	<p>page directive의 import attribute 사용</p>
	<%
		java.util.List<String> list = new java.util.ArrayList<>();
		list.add("hello");
		list.add("hi");
	%>
</body>
</html>