<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%!

private String calc(int num1, int num2, String op) {
	int result = 0;
	String message = "";
	switch (op) {
		case "plus" :
			result = num1 + num2;
			return num1 + " + " + num2 + " = " + result;
		
		case "minus" :
			result = num1 - num2;
			return num1 + " - " + num2 + " = " + result;
			
		case "times" :
			result = num1 * num2;
			return num1 + " X " + num2 + " = " + result;
			
		case "divide" :
			result = num1 / num2;
			return num1 + " / " + num2 + " = " + result;
			
		default :
			return "";
	}
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String num1par = request.getParameter("num1");
	String num2par = request.getParameter("num2");
	String op = request.getParameter("op");
	int num1 = Integer.parseInt(num1par);
	int num2 = Integer.parseInt(num2par);
%>

<h1><%= calc(num1, num2, op) %></h1>

</body>
</html>