<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1~10 출력</h1>
	<!-- p{$}*10 -->
	<p>1</p>
	<p>2</p>
	<p>3</p>
	<p>4</p>
	<p>5</p>
	<p>6</p>
	<p>7</p>
	<p>8</p>
	<p>9</p>
	<p>10</p>
	<%
	// p요소 10개 출력
	for (int i = 1; i <= 10; i++) {
		out.println("<p>" + i + "</p>");
	}
	%>
</body>
</html>
