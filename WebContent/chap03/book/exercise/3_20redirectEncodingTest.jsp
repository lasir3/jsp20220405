<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.net.URLEncoder" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String value = "자바";
	String encodedValue = URLEncoder.encode(value, "utf-8");
	response.sendRedirect("3_99index.jsp?name=" + encodedValue);
%>