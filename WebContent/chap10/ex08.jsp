<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<h1>ex08.jsp</h1>
<h2>session에 names attribute(속성) set</h2>
<%

List<String> list = new ArrayList<>();

list.add("jimin");
list.add("RM");
list.add("soda");

session.setAttribute("names", list);
%>