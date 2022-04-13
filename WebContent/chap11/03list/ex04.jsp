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
<%
List<String> list = new ArrayList<>();
list.add("jhope");
list.add("rm");
list.add("jungkook");
list.add("jin");

pageContext.setAttribute("myList", list);

for (int i = 0; i < list.size(); i++) {
	pageContext.setAttribute("idx", i);
%>
	<p>${myList[idx] }</p>
<%
}
%>

<hr />

<%
for (String item : list) {
	pageContext.setAttribute("elem", item);

%>
	<p>${elem }</p>
<%
}
%>
</body>
</html>