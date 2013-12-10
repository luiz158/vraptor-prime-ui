<%@tag language="java" dynamic-attributes="attrs" body-content="empty" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" %>

<div id="${id}" required="true"></div>

<u:jsStore>
<script>
$('#${id}').puigrowl();
<c:if test="${not empty errors}">
	var msgs = [];
	<c:forEach items="${errors}" var="e">
		 msgs.push({severity: 'error', summary: '${e.category}', detail: '${e.message}'});  
	</c:forEach>
	$('#${id}').puigrowl('show',msgs);
</c:if>
</script>
</u:jsStore>


