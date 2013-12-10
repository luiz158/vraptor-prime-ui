<%@tag language="java" dynamic-attributes="attrs" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" required="true"%>
<%@attribute name="activeIndex" %>
<%@attribute name="multiple" %>
<%@attribute name="change" %>

<u:default varName="activeIndex" defaultValue="0" />
<u:default varName="multiple" defaultValue="false" />

<div id="${id}" <c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>>
	<jsp:doBody/>
</div>

<u:jsStore>
<script>
$('#${id}').puiaccordion({
	activeIndex : ${activeIndex}, 
	multiple : ${multiple}
<c:if test="${not empty change}">
	,change: ${change}
</c:if>
	});  
</script>
</u:jsStore>

