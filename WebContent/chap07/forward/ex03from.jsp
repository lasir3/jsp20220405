<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String param = request.getParameter("param");

if (param != null && param.equals("vip")) {
%>
	<jsp:forward page="ex03to1.jsp" />	
<%
} else {
%>
	<jsp:forward page="ex03to2.jsp" />
<%
}
%>