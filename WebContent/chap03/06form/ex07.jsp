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
<h1>checkbox 예제</h1>
<h2>좋아하는 영화를 고르세요</h2>
<form action="ex08.jsp">
	<!-- (input:c+br)*5+input:submit -->
	<input type="checkbox" name="movie" id="" value="avengers"/> 어벤져스
	<br />
	<input type="checkbox" name="movie" id="" value="scream"/> 스크림
	<br />
	<input type="checkbox" name="movie" id="" value="morbius"/> 모비우스
	<br />
	<input type="checkbox" name="movie" id="" value="spiderman"/> 스파이더맨
	<br />
	<input type="checkbox" name="moive" id="" value="ambulance"/> 엠뷸런스
	<br />
	<input type="submit" value="고르기" />
</form>
</body>
</html>