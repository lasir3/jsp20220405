<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
// 상대경로
String location = "ex06to.jsp";


// 절대경로
String location2 = "/jsp11/chap03/07response/ex06to.jsp";

//context path(contextroot)는 바뀔 수 있으니
// request.getContextPath() 메소드 사용

String location3 = request.getContextPath() + "/chap03/07response/ex06to.jsp";
response.sendRedirect(location3);
%>