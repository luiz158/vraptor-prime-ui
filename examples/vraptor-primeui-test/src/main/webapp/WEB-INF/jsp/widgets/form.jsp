<%@page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://vraptor.caelum.com.br/plugins/prime-ui" prefix="v" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form tags</title>
<v:css/>
</head>
<body>

<h3>Form Tags</h3>

<form>
<p>
	<input type="text" name="val">
</p>
<p>
	<label for="check">Checkbox:</label>
	<v:checkbox name="check" value="1" />
</p>
</form>
<v:scripts/>
</body>
</html>