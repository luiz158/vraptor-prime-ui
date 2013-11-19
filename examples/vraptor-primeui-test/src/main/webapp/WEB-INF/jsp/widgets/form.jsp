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
		<h3>inputText</h3>
		<v:inputText name="inputText" placeholder="place the name here" />
	</p>
	<p>
		<h3>password</h3>
		<v:password name="password" />
	</p>
	<p>
		<h3>textArea</h3>
		<v:textArea name="textArea" rows="5" cols="100" autoResize="true">Some text</v:textArea>
	</p>
	
	<p>
	<h3>listBox</h3>  
	<v:listBox name="listBox" multiple="true">  
	    <option value="0">Select one or more</option>  
	    <option value="1">Option 1</option>  
	    <option value="2">Option 2</option>  
	    <option value="3">Option 3</option>  
	    <option value="4">Option 4</option>  
	    <option value="5">Option 5</option>  
	</v:listBox>
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