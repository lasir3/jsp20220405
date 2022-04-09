<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
String actorValue = java.net.URLEncoder.encode("윤+여정", "utf-8");
response.sendRedirect("ex05to.jsp?age=90&movie=doctor&actor=" + actorValue);
%>
