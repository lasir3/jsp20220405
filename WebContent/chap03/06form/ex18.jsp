<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
<h1>GET 방식 전송</h1>
<p>주소창에 표시되고 길이에 제한이 있다.</p>

<h1>POST 방식 전송</h1>
<p>주소에 표시되지 않고 길이에 제한이 없다.</p>
<form action="ex19.jsp" method="post">
	<!-- input:password+br+button{로그인} -->
	<input type="password" name="pw"/>
	<br />
	<button>로그인</button>
</form>
</body>
</html>