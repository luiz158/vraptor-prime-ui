<%@tag language="java" dynamic-attributes="attrs" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" required="true"%>
<%@attribute name="buttonType" rtexprvalue="button|submit" %>
<%@attribute name="label" %>

<u:default varName="buttonType" defaultValue="submit"/>

<button id="${id}" type="${buttonType}" <c:forEach var="a" 
				items="${attrs}">${a.key} = "${a.value}"</c:forEach>>
${label}
	<jsp:doBody/>
</button>

<u:jsStore>
<script>
$('#${id}').puibutton();  
</script>
</u:jsStore>



