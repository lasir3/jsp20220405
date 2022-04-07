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
<h1>textarea</h1>

<form action="ex14.jsp">
	<!-- input+br+textarea+br+input:submit -->
	<input type="text" name="name"/>
	<br />
	<textarea name="desc" id="" cols="30" rows="10">hello</textarea>
	<br />
	<input type="submit" value="전송" />
</form>
</body>
</html>