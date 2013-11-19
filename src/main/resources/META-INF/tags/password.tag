<%@tag language="java" dynamic-attributes="attrs" body-content="empty" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" %>
<%@attribute name="name" required="true" %>
<%@attribute name="inline" %>
<%@attribute name="promptLabel" %>
<%@attribute name="weakLabel" %>
<%@attribute name="mediumLabel" %>
<%@attribute name="strongLabel" %>

<u:default varName="id" defaultValue="${name}"/>
<u:default varName="inline" defaultValue="false"/>
<u:default varName="promptLabel" defaultValue="Please enter a password"/>
<u:default varName="weakLabel" defaultValue="Weak"/>
<u:default varName="mediumLabel" defaultValue="Medium"/>
<u:default varName="strongLabel" defaultValue="Strong"/>

<input type="password" id="${id}" name="${name}" <c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>/>    

<u:jsStore>
<script>
$('#${id}').puipassword({
	inline : ${inline},
	promptLabel : "${promptLabel}",
	weakLabel : "${weakLabel}",
	mediumLabel : "${mediumLabel}",
	strongLabel: "${strongLabel}"
}); 
</script>
</u:jsStore>