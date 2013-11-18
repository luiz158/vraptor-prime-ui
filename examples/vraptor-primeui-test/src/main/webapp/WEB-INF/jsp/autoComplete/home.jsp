<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<%@ taglib uri="http://vraptor.caelum.com.br/plugins/prime-ui" prefix="v" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Auto Complete</title>
<v:css/>
</head>
<body>


<h3 class="title title-short">Remote</h3>
<v:autocomplete name="bla" id="blabla" url="autoCompleteForm"/>

<v:autocomplete name="asdasd" minQueryLength="1" url="autoCompleteForm"/>

<v:scripts/>
</body>
</html>