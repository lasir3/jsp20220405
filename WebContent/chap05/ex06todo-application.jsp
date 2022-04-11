<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<h1>할일 목록 (application)</h1>
	
	<form>
		할일 : <input type="text" name="todo" /> 
		<input type="submit" value="추가" />
	</form>
	
	<%
	List<String> list = (List<String>) application.getAttribute("todoList");
	if (list == null) {
		list = new ArrayList<>();
		application.setAttribute("todoList", list);
	}
	
	String todo = request.getParameter("todo");
	if (todo != null && !todo.equals("")) {
		list.add(todo);
	}
	%>
	
	<ul>
		<%
		for (String item : list) {
			out.print("<li>");
			out.print(item);
			out.print("</li>");
		}
		%>
	</ul>
	
</body>
</html>