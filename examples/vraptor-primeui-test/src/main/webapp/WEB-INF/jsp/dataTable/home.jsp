<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://vraptor.caelum.com.br/plugins/prime-ui" prefix="v" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Data Tables</title>
<v:css/>
</head>
<body>

<h3 class="title title-short">Lazy DataTable</h3>

<v:dataTable id="dataTable" url="lazyData" tableHeader="Products" rows="5" 
columns="[{field:'name', headerText: 'Name', sortable: true},
	      {field:'price', headerText: 'Price', sortable: true},
	      {field:'stockSize', headerText: 'Stock Size'}]"
/>

<v:scripts/>
</body>
</html>