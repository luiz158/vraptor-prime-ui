<%@tag language="java" dynamic-attributes="attrs"  pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="name" required="true" %>

<select name="${name}" <c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>
 multiple="multiple">
	<jsp:doBody/>
</select>