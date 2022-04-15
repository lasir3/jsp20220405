<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="chap11.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%

String model = request.getParameter("model");
String priceStr = request.getParameter("price");
String availabe = request.getParameter("available");
String[] owners = request.getParameterValues("owner");

int price = Integer.parseInt(priceStr);

Car car = new Car(model, price);

if (availabe != null && availabe.equals("true")) {
	car.setAvailable(true);
}

if (owners != null) {
	car.setOwners(Arrays.asList(owners));
}

// car를 database에 저장해야하는데 
// application에 저장하는 걸로 대체..

List<Car> cars = (List<Car>) application.getAttribute("cars");
if (cars == null) {
	cars = new ArrayList<>();
	application.setAttribute("cars", cars);
}

cars.add(car);

response.sendRedirect("ex18carForm.jsp");


%>




