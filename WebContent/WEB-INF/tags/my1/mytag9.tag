<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div>
	<p>${pageScope.pageAttr1 }</p>
	<p>${pageAttr1 }</p>

	<p>${requestScope.reqAttr1 }</p>
	<p>${reqAttr1 }</p>
	
	<p>${sessionScope.sessAttr1 }</p>
	<p>${sessAttr1 }</p>
	
	<p>${applicationScope.appAttr1 }</p>
	<p>${appAttr1 }</p>
</div>