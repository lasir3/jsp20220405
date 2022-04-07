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
<!-- include directive -->
<!-- file 속성으로 이 위치에 포함될 파일의 경로를 작성 -->
<%@ include file="module/header01.jsp" %>

<!-- div>(h1>lorem1^p>lorem)*3 -->
<div>
	<h1>Lorem.</h1>
	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam unde harum illo accusantium repellendus facere excepturi nostrum totam. Alias atque fugiat quibusdam nostrum repellendus neque tempora ab perferendis voluptates dicta!</p>
	<h1>Modi.</h1>
	<p>Nihil suscipit a laudantium voluptas dignissimos architecto perferendis mollitia et sequi porro aliquam ipsum fuga labore magni illum corporis rem sed ad repellat necessitatibus blanditiis quia provident expedita aspernatur reiciendis.</p>
	<h1>Vitae.</h1>
	<p>Maxime suscipit voluptatibus adipisci enim magni odio iure modi sit sed commodi nam unde voluptas! Dolores fugit fuga inventore iusto et sequi ea itaque sint asperiores quasi blanditiis repellat odit!</p>
</div>
</body>
</html>