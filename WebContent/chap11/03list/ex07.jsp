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
List<Car> list1 = new ArrayList<>();
list1.add(new Car("폭스바겐", 1000));
list1.add(new Car("현대", 500));

List<Car> list2 = new ArrayList<>();
list2.add(new Car("볼보", 2000));
list2.add(new Car("벤츠", 1500));

pageContext.setAttribute("myCars", list1);
pageContext.setAttribute("yourCars", list2);
%>

<%-- el을 사용해서 모든 model과 price가 출력되도록 코드 작성 --%>
<p>${myCars[0].model }</p>
<p>${myCars[0].price }</p>
<p>${myCars[1].model }</p>
<p>${myCars[1].price }</p>

<p>${yourCars[0].model }</p>
<p>${yourCars[0].price }</p>
<p>${yourCars[1].model }</p>
<p>${yourCars[1].price }</p>
</body>
</html>