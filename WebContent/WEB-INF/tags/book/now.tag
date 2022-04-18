<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag import = "java.util.Calendar" %>
<%
	Calendar cal = Calendar.getInstance();
%>
<%= cal.get(Calendar.YEAR) %> 년
<%= cal.get(Calendar.MONTH)+1 %> 월
<%= cal.get(Calendar.DATE) %> 일