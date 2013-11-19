<%@tag language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="title" required="true"%>

<h3>${title}</h3>
<div>
	<jsp:doBody/>
</div>