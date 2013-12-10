<%@tag language="java" dynamic-attributes="attrs"  pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@attribute name="id" required="true" %>
<%@attribute name="effect" %>
<%@attribute name="effectSpeed" %>
<%@attribute name="dragdrop" %>
<%@attribute name="filter" %>
<%@attribute name="filterMatchMode" %>

<u:default varName="effect" defaultValue="fade"/>
<u:default varName="effectSpeed" defaultValue="fast"/>
<u:default varName="dragdrop" defaultValue="true"/>
<u:default varName="filter" defaultValue="false"/>
<u:default varName="filterMatchMode" defaultValue="startsWith"/>

<div id="${id}" <c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>>
	<jsp:doBody/>
</div>

<u:jsStore>
<script>
$('#${id}').puipicklist({  
    effect: '${effect}',
    effectSpeed: '${effectSpeed}',
    dragdrop : ${dragdrop},
    filter : ${filter},
    filterMatchMode : '${filterMatchMode}'
});
</script>
</u:jsStore>



