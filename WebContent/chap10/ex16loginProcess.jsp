<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

session.setAttribute("id", id);

// 무조건 로그인 실패
session.setAttribute("errorMessage", "아이디나 패스워드가 일치하지 않습니다.");

response.sendRedirect("ex15loginForm.jsp");
%>