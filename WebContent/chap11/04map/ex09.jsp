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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
<%
List<Student> list = new ArrayList<>();
list.add(new Student("son", "m", 90));
list.add(new Student("park", "f", 95));
list.add(new Student("cha", "m", 88));
list.add(new Student("kim", "f", 87));
list.add(new Student("lee", "m", 60));
list.add(new Student("harry", "m", 77));

request.setAttribute("students", list);

%>

<h1>학생들</h1>
<!-- table>thead>tr>th*3^^tbody>tr*6>td*3 -->
<table class="table table-striped"> 
	<thead>
		<tr>
			<th scope="col">이름</th>
			<th scope="col">성별</th>
			<th scope="col">점수</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${students[0].name }</td>
			<td>${students[0].gender }</td>
			<td>${students[0].score }</td>
		</tr>
		<tr>
			<td>${students[1].name }</td>
			<td>${students[1].gender }</td>
			<td>${students[1].score }</td>
		</tr>
		<tr>
			<td>${students[2].name }</td>
			<td>${students[2].gender }</td>
			<td>${students[2].score }</td>
		</tr>
		<tr>
			<td>${students[3].name }</td>
			<td>${students[3].gender }</td>
			<td>${students[3].score }</td>
		</tr>
		<tr>
			<td>${students[4].name }</td>
			<td>${students[4].gender }</td>
			<td>${students[4].score }</td>
		</tr>
			<td>${students[5].name }</td>
			<td>${students[5].gender }</td>
			<td>${students[5].score }</td>
		</tr>
	</tbody>
</table>

</body>
</html>