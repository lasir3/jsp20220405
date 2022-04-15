<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<%
	List<Car> list = new ArrayList<>();
	list.add(new Car("volvo", 3000));
	list.add(new Car("kia", 2000));
	list.add(new Car("tesla", 1000));
	list.add(new Car("benz", 500));
	list.add(new Car("hyundai", 2500));
	
	pageContext.setAttribute("cars", list);
	%>
	
	<c:forEach items="${cars }" var="car">
		<li>model: ${car.model }, price : ${car.price }</li>
	</c:forEach>
	
	<table class="table">
		<thead>
			<tr>
				<th>#</th>
				<th>model</th>
				<th>price</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${cars }" var="car" varStatus="status">
			<tr>
				<th>${status.index + 1}</th>
				<th>${car.model }</th>
				<th>${car.price }</th>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>