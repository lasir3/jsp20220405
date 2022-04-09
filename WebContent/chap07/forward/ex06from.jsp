<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>


<%
String job = "Students";

List<String> list = new ArrayList<>();

list.add("tomas");
list.add("john");
list.add("eddie");

request.setAttribute("job", job);
request.setAttribute("names", list);
%>

<jsp:forward page="ex06to.jsp"/>