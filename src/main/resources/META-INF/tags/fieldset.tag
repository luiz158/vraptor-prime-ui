<%@tag language="java" dynamic-attributes="attrs" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" required="true"%>
<%@attribute name="toggleable" rtexprvalue="true|false"%>
<%@attribute name="legend" %>

<u:default varName="toggleable" defaultValue="false"/>

<fieldset id="${id}">
	<c:if test="${not empty legend}">
	    <legend>${legend}</legend>
	</c:if>
	<jsp:doBody/>
</fieldset>  

<u:jsStore>
<script>
$('#${id}').puifieldset({
    toggleable: ${toggleable}
});
</script>
</u:jsStore>




