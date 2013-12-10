<%@tag language="java" dynamic-attributes="attrs" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" required="true"%>
<%@attribute name="title" required ="true" %>

<%@attribute name="toggleable" %>
<%@attribute name="toggleDuration" %>
<%@attribute name="toggleOrientation" %>
<%@attribute name="collapsed" %>
<%@attribute name="closable" %>
<%@attribute name="closeDuration" %>

<u:default varName="toggleable" defaultValue="false" />
<u:default varName="toggleDuration" defaultValue="normal" />
<u:default varName="toggleOrientation" defaultValue="vertical" />
<u:default varName="collapsed" defaultValue="false" />
<u:default varName="closable" defaultValue="false" />
<u:default varName="closeDuration" defaultValue="normal" />

<div id="${id}" title="${title}" <c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>>
	<jsp:doBody/>
</div>

<u:jsStore>
<script>
$('#${id}').puipanel({
	toggleable : ${toggleable}, 
	toggleDuration : '${toggleDuration}',
	toggleOrientation : '${toggleOrientation}',
	collapsed : ${collapsed},
	closable : ${closable},
	closeDuration : '${closeDuration}'
	});  
</script>
</u:jsStore>

