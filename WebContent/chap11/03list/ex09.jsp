<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="chap11.*" %>
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
Car c1 = new Car("tesla", 1000);
List<String> o = new ArrayList<>();
o.add("kim");
o.add("lee");

c1.setOwners(o);

pageContext.setAttribute("myCar", c1);

%>

<p>${myCar.owners[0] }</p> <%-- kim --%>
<p>${myCar.owners[1] }</p> <%-- lee --%>

</body>
</html>