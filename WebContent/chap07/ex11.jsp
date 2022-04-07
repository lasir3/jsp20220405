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
<p>ex11.jsp</p>
<%-- 데이터 전달시 request 파라미터 사용 --%>

<%-- query string으로 전달 하는 방법(비추천) --%>
<jsp:include page="ex12.jsp?name=hello world + 한글&age=30"></jsp:include>

<%-- jsp param 표준액션태그 사용 방법(추천) --%>
<jsp:include page="ex12.jsp">
	<jsp:param name="name" value="hello world + 한글"></jsp:param>
	<jsp:param value="90" name="age"/>
</jsp:include>
</body>
</html>