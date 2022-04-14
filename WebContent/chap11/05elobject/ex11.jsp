<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>pageScope, requestScope, sessionScope, applicationScope : el 객체</h1>
	<h>Map&lt;String, Object&gt; 타입</h>
	
	<p>각 영역의 attribute를 맵의 엔트리로 가지고 있음</p>
	
	<%
	pageContext.setAttribute("pageAttr1", "pageValue1");
	pageContext.setAttribute("pageAttr2", new Car("volvo", 7000));
	pageContext.setAttribute("my car", new Car("benz", 8000));
	%>
	
	<p>${pageAttr1 }</p>
	<p>${pageScope.pageAttr1 }</p>
	<p>${pageAttr2.model }</p>
	<p>${pageAttr2.price }</p>
	<p>${pageScope.pageAttr2.model }</p>
	<p>${pageScope.pageAttr2.price }</p>
	<%-- <p>${my car }</p> 사용안됨 --%>
	<p>${pageScope["my car"].model }</p>
	<p>${pageScope["my car"].price }</p>
</body>
</html>