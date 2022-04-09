<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
Map<String, String> map = new HashMap();
request.setAttribute("movieMap", map);
map.put("movie1", "pachinko");
map.put("movie2", "doctor");
%>

<jsp:forward page="ex05to.jsp" />