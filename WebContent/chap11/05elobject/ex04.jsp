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
	<form action="ex03.jsp">
		<%-- 적절한 코드 작성해서 ex03에 spring, hello@gmail.com, butter 출력되도록 --%>
		<%-- <%
			Map<String, String> map = new HashMap<>();
			map.put("season", "spring");
			map.put("email", "hello@gmail.com");
			map.put("song", "butter");
			
	 		request.setAttribute("map", map);	
		%> --%>
		<input type="text" name="season" value="spring"/>
		<br />
		<input type="text" name="email" value="hello@gmail.com"/>
		<br />
		<input type="text" name="song" value="butter"/>
		<br />
		
		<input type="submit" value="전송"/>
	</form>
	
</body>
</html>