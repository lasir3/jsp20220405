<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ tag dynamic-attributes="attrs" %>
<%@ attribute name="attr1" %>

<div>
	attr1 : ${attr1 }
</div>

<div>
	attr2 : ${attrs.attr2 }
</div>

<div>
	other1 : ${attrs.other1 }
</div>