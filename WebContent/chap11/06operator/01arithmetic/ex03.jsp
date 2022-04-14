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
	<h1>el에 literal value 사용가능</h1>
	
	<p>${3 + 5 }</p>
	<p>${3 - 5 }</p>
	<p>${3 * 5 }</p>
	<p>${3 / 5 }</p>
	<p>${3 % 5 }</p>
	
	<hr />
	
	<p>${"3" + "5" }</p>
	<p>${"3" - "5" }</p>
	<p>${"3" * "5" }</p>
	<p>${"3" / "5" }</p>
	<p>${"3" % "5" }</p>
	

</body>
</html>