<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%-- ex04to.jsp로 redirect 코드 작성 --%>

<%
//ex04to.jsp로 데이터 전달
request.setAttribute("movie", "doctor");

String path = "ex04to.jsp?age=90";
response.sendRedirect(path);
%>