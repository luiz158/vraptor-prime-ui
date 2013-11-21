<%@tag language="java" dynamic-attributes="attrs"  pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@attribute name="id" %>
<%@attribute name="name" required="true" %>
<%@attribute name="filter" %>
<%@attribute name="selectValue" %>

<u:default varName="id" defaultValue="${name}"/>
<u:default varName="filter" defaultValue="false"/>

<select id="${id}" name="${name}" <c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>>
	<jsp:doBody/>
</select>

<u:jsStore>
<script>
$('#${id}').puidropdown({  
    filter: ${filter}
});

<c:if test="${not empty selectValue}">
	$('#${id}').puidropdown('selectValue',${selectValue});
</c:if>
</script>
</u:jsStore>


  