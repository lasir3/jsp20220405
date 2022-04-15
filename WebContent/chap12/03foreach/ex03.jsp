<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<form>
		구구단 <input type="number" name="dan" /> 단
		<input type="submit" value="출력" />
	</form>
	
	<%-- 입력단 dan 파라미터 사용해서 구구단 출력 --%>
	<%-- dan 이 2 ~ 9 아니면 "적절한 단을 입력해주세요" 출력 --%>
	<c:choose>
		<c:when test="${param.dan <= 9 && param.dan >=2 }">
			<c:forEach begin="1" end="9" var="i">
				<p>${param.dan } * ${i } = ${param.dan * i }</p>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<p>적절한 숫자를 입력해주세요.</p>
		</c:otherwise>
	</c:choose>
</body>
</html>
