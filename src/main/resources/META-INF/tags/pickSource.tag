<%@tag language="java" dynamic-attributes="attrs"  pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="name" %>

<select <c:if test="${not empty name}">name="${name}"</c:if> 
<c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>>
	<jsp:doBody/>
</select>