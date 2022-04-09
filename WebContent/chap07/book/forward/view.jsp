<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if (code.equals("A")){
		viewPageURI = "/chap07/book/forward/viewModule/a.jsp";
	} else if (code.equals("B")) {
		viewPageURI = "/chap07/book/forward/viewModule/b.jsp";
	} else if (code.equals("C")) {
		viewPageURI = "/chap07/book/forward/viewModule/c.jsp";
	}

%>
<jsp:forward page="<%= viewPageURI %>"></jsp:forward>
