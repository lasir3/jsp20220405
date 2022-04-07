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

<%-- param 액션 태그의 파라미터는 include 되는 페이지에서만 사용 가능 --%>
	<!-- html 주석 -->
	<%-- jsp 주석 --%>
<jsp:include page="ex16.jsp">
	<jsp:param value="999" name="age"/>
	<jsp:param value="donald" name="name"/>
	<jsp:param value="duck" name="detail"/>
</jsp:include>

<div>
	<p>ex15</p>
	<p><%= request.getParameter("age") %></p>
	<p><%= request.getParameter("name") %></p>
</div>

<hr />

<%-- value의 값이 너무 클 경우 --%>
<%
	String value1 = "너무 큰 값이 들어갈 경우 태그 body로 작성하면 안되고 expression사용";
%>
<jsp:include page="ex16.jsp" >
	<jsp:param name="detail" value="<%= value1 %>"></jsp:param>
</jsp:include>



</body>
</html>







