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
	<h1>el 비교 연산자</h1>
	<h1>==, !=, &lt;, %gt;, &lt;=, &gt;=</h1>
	<h1>eq, ne, lt, gt, le, ge</h1>
	<h1>연산 결과 : boolean (true, false)</h1>
	
	<h2>${3 == 5 }</h2>
	<h2>${3 eq 5 }</h2>
	<h2>${3 != 5 }</h2>
	<h2>${3 ne 5 }</h2>
	<h2>${3 < 5 }</h2>
	<h2>${3 lt 5 }</h2>
	<h2>${3 > 5 }</h2>
	<h2>${3 gt 5 }</h2>
	<h2>${3 <= 5 }</h2>
	<h2>${3 le 5 }</h2>
	<h2>${3 >= 5 }</h2>
	<h2>${3 ge 5 }</h2>
</body>
</html>