<%@tag language="java" dynamic-attributes="attrs" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" %>
<%@attribute name="name" required="true" %>
<%@attribute name="value" required="true" %>

<u:default varName="id" defaultValue="${name}"/>

<input type="checkbox" id="${id}" name="${name}" value="${value}" <c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>/>    

<u:jsStore>
<script>
$('#${id}').puicheckbox(); 
</script>
</u:jsStore>