<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(id.equals(pw)) {
	// 로그인 성공
	session.setAttribute("username", id);
	String loc = "ex07main.jsp";
	response.sendRedirect(loc);
} else {
	// 로그인 실패
	String loc = "ex05loginForm.jsp?error=true";
	response.sendRedirect(loc);
}
%>