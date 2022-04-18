<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="begin" %>
<%@ attribute name="end" %>


<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    
	<c:forEach begin = "${begin }" end = "${end }" var="num">
	    <li class="page-item"><a class="page-link" href="#">${num }</a></li>
	</c:forEach>

    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
</nav>