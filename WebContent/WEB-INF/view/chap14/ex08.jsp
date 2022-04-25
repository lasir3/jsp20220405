<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>

	<div>
		<c:if test="${not empty param.success }">
			<c:if test="${param.success }">
				<p class="text-sucess">입력 성공</p>
			</c:if>
			
			<c:if test="${not param.success }">
				<p class="text-danger">입력 실패</p>
			</c:if>
		</c:if>
	</div>
	
	<form action="" method="post">
		고객명 : <input type="text" name="customerName" /> <br />
		계약명 : <input type="text" name="contactName"/> <br />
		주소 : <input type="text" name="address" /> <br />
		도시 : 
			<select name="city" id="">
				<c:forEach items="${cityList }" var="city">
					<option value="${city }">${city }</option>
				</c:forEach>
			</select>
			
		<br />
		우편번호 : <input type="text" name="postalCode"/> <br />
		나라 : 
			<select name="country" id="">
				<c:forEach items="${countryList }" var="country">
					<option value="${country }">${country }</option>
				</c:forEach>
			</select>
		 <br />
		<input type="submit" value="등록" />
	</form>
</body>
</html>