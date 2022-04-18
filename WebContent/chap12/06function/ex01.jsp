<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h1>el function (책 333쪽)</h1>
	
	<c:set var="str1" value="Functions <태그>를 사용합니다. "></c:set> 
	<!-- 페이지 영역에 str1이란 이름으로 Function이란 값을 가지는 attribute 저장 -->
	<c:set var="str2" value="사용"></c:set>
	<c:set var="tokens" value="1,2,3,4,5,6,7,8,9,10"></c:set>
	
	length(str1) = ${fn:length(str1) } <br />
	toUpperCase(str1) = "${fn:toUpperCase(str1) }" <br />
	toLowerCase(str1) = "${fn:toLowerCase(str1) }" <br />
	substring(str1, 3, 6 ) = "${fn:substring(str1, 3, 6) }" <br />
	substringAfter(str1, str2) = "${fn:substringAfter(str1, str2)}" <br />
	substringBefore(Str1, str2) = "${fn:substringBefore(str1, str2) }" <br />
	trim(str1) = "${fn:trim(str1)}" <br />
	replace(str1, src, dest) = "${fn:replace(str1, " ", "-")}" <br />
	indexOf(str1, str2) = "${fn:indexOf(str1, str2) }" <br />
	startsWith(str1, str2) = "${fn:startsWith(str1, 'Fun') }" <br />
	endsWith(str1, str2) = "${fn:endsWith(str1, "합니다.")}" <br />
	contains(str1, str2) = "${fn:contains(str1, str2) }" <br />
	containsIgnoreCase(str1, str2) = "${fn:containsIgnoreCase(str1, str2) }" <br />
	
	<c:set var="array" value="${fn:split(tokens, ',')}"></c:set>
	
	join(array, "-") = "${fn:join(array, "-")}"" <br />
	escapeXml(str1) = "${fn:escapeXml(str1) }" <br />
</body>
</html>