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
	<form action="ex06.jsp">
		수1 <input type="text" name="number1" /> <br />
		수2 <input type="text" name="number2" /> <br />
		
		<input type="submit" value="계산" />
	
	</form>
	
	<%-- 계산 버튼 누르면 ex06.jsp에서 두 수의
		 산술연산(+, -, *, /, %) 결과를 el 사용해서 출력 
		 hint : el param (map 객체) 사용--%>
		 
</body>
</html>