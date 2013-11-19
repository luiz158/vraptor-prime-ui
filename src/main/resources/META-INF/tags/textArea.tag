<%@tag language="java" dynamic-attributes="attrs" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" %>
<%@attribute name="name" required="true" %>
<%@attribute name="rows" %>
<%@attribute name="cols" %>
<%@attribute name="autoResize" rtexprvalue="true|false" %>
<%@attribute name="maxlength" %>


<u:default varName="id" defaultValue="${name}"/>
<u:default varName="rows" defaultValue="5"/>
<u:default varName="cols" defaultValue="30"/>
<u:default varName="autoResize" defaultValue="false"/>

<textarea id="${id}" name="${name}" rows="${rows}" cols="${cols}" 
<c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>><jsp:doBody/></textarea>

<u:jsStore>
<script>
$('#${id}').puiinputtextarea({
	autoResize:${autoResize},
	maxlength : ${not empty maxlength ? maxlength : 'null'}
}); 
</script>
</u:jsStore>