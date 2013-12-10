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

<v:growl id="errors"/>

<form action ="submit">
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
	</v:listBox>
	</p>
	
	<p>
		<h3>Checkbox</h3>
		<label for="ch1">Check 1</label>
		<v:checkbox id="ch1" name="check" value="1" /> <br/>
		<label for="ch2">Check 2</label>
		<v:checkbox id="ch2" name="check" value="2" />
	</p>
	
	<p>
		<h3>Radio</h3>
		<label for="ra1">Radio 1</label>
		<v:radio id="ra1" name="check" value="1" />
		<label for="ra2">Radio 2</label>
		<v:radio id="ra2" name="check" value="2" />
	</p>
	<p>
		<h3>Static Select</h3>
		<v:select name="select" filter="true" >
	    <option value="0">Select one</option>  
	    <option value="1">Option 1</option>  
	    <option value="2">Option 2</option>  
		</v:select>
	</p>
	
	<p>
		<h3>Dynamic Select</h3>
		<v:select name="dynSelect" filter="true" selectValue="1">
	    	<option value="-1">Select one</option>
	    	<v:options items="${products}" var="p" itemLabel="#{p.name}" itemValue="id"/>
		</v:select>
	</p>
	
	<p>
		<h3>Picklist</h3>
		
		<v:pickList id="pickList" filter="true">
			<v:pickSource>
		    	<option value="-1">Select one</option>
		    	<option value="1">Select 1</option>
		    	<option value="2">Select 2</option>
		    	<option value="3">Select 3</option>
		    	<option value="4">Select 4</option>
		    	<option value="5">Select 5</option>
		    	<option value="6">Select 6</option>
			</v:pickSource>
			<v:pickTarget name="picklist[]" />
		</v:pickList>
	</p>
	<p>
		<v:button id="button" label="send" />
	</p>
</v:fieldset>
</form>
<v:scripts/>
</body>
</html>