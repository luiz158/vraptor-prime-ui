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
<v:fieldset id="fieldset" legend="Some form components">
	<p>
		<v:inputText name="name" placeholder="place the name here" />
	</p>
	<p>
		<label for="check">Checkbox:</label>
		<v:checkbox name="check" value="1" />
	</p>
	<p>
		<v:select name="select" filter="true" >
			<option value="0">Select a City</option>  
			<option value="1">Barcelona</option>  
			<option value="2">Berlin</option>  
			<option value="3">Istanbul</option>  
			<option value="4">London</option>  
			<option value="5">New York</option>  
			<option value="6">Paris</option>  
			<option value="7">Rome</option>
			<option value="8">Sao Paulo</option>
		</v:select>
	</p>
	<p>
		<v:button id="button" label="send" />
	</p>
</v:fieldset>
</form>
<v:scripts/>
</body>
</html>