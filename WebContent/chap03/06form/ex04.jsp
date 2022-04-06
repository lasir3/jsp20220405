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
<h1>form 요소들 (input, textarea, select, button)</h1>
<h2>input</h2>
<p>input요소의 type 속성에 따라 입력하는 방법이 달라짐</p>
<hr />
<h1>type="text"</h1>

<form action="ex05.jsp">
	<!-- text 입력란 -->
	<input type="text" name="group"/>
	
	<!-- 전송 -->
	<input type="submit" />
</form>

<h1>type="password"</h1>

<form action="ex05.jsp">
	<input type="password" name="pw" />
	<input type="submit" />
</form>

<h1>type="date"</h1>

<form action="ex05.jsp">
	<input type="date" name="birth" /> <!-- String 타입으로 전송 -->
	<input type="submit" />
</form>

<h1>type="number", type="email", type="file"</h1>

<form action="ex05.jsp]">
	<input type="number" name="num" /> <br />
	<input type="email" name="email" /> <br />
	<input type="file" name="fileName" /> <br />
	<input type="submit" />
</form>

</body>
</html>