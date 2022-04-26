<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">

				<h1>고객 테이블</h1>

				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>City</th>
							<th>Country</th>
							<th>PostalCode</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customerList }" var="cus">
							<tr>
								<td>${cus.id }</td>
								<td>${cus.name }</td>
								<td>${cus.city }</td>
								<td>${cus.country }</td>
								<td>${cus.postCode }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav>
					<ul class="pagination justify-content-center">
						<c:if test="${prevPage >= 1 }">
							<li class="page-item">
								<a class="page-link" href="S14Servlet19?page=1">FirstPage</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="S14Servlet19?page=${prevPage }"
									aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>

						</c:if>

						<c:forEach begin="${startPage }" end="${endPage }" var="pageNum">
							<li class="page-item ${pageNum == currentPage ? 'active' : '' }">
								<a class="page-link" href="S14Servlet19?page=${pageNum }">${pageNum }</a>
							</li>

						</c:forEach>

						<c:if test="${endPage != lastPage }">
							<li class="page-item">
								<a class="page-link" href="S14Servlet19?page=${nextPage }"
									aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="S14Servlet19?page=${lastPage }">LastPage</a>
							</li>
						</c:if>

					</ul>
				</nav>
			</div>
		</div>
	</div>

</body>
</html>