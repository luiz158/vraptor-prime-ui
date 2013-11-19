<%@tag language="java" dynamic-attributes="attrs" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@attribute name="id" %>
<%@attribute name="name" required="true" %>
<%@attribute name="multiple" rtexprvalue="true|false" %>

<u:default varName="id" defaultValue="${name}"/>
<u:default varName="multiple" defaultValue="false"/>

<select id="${id}" name="${name}" <c:if test="${multiple}">multiple="multiple"</c:if> 
<c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>>
	<jsp:doBody/>
</select>

<u:jsStore>
<script>
$('#${id}').puilistbox();
</script>
</u:jsStore>


  