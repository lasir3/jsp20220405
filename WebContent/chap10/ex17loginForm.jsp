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
	<h1>로그인 화면</h1>
	<%
	String id = (String) session.getAttribute("id");
	
	if(id == null) {
	%>
		<form action="ex18loginProcess.jsp" method="post">
		<!-- (input+br)*2+input:submit -->
		아이디 <input type="text" name="id"/>
		<br />
		암호 <input type="password" name="pw"/>
		<br />
		<input type="submit" value="로그인" />
		</form>
	<%	
	} else {
	%>
	<h2><%= session.getAttribute("message") %></h2>	
	<h2><a href="ex19logoutProcess.jsp">로그아웃</a></h2>
	<%
	}
	%>
	
</body>
</html>