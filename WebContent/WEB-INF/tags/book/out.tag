<%@ tag body-content="tagdependent" pageEncoding="UTF-8"%>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:doBody var="bodyText"></jsp:doBody>
<c:out value="${bodyText }"	escapeXml="true"></c:out>