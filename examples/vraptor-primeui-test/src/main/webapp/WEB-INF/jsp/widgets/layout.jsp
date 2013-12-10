<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://vraptor.caelum.com.br/plugins/prime-ui" prefix="v" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Layout tags</title>
<v:css/>
</head>
<body>

<h3>Accordion</h3>

<v:accordion id="accordion">
	<v:accordionItem title="What is Lorem ipsum ?">
		Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
		Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, 
		when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
		It has survived not only five centuries, but also the leap into electronic 
		typesetting, remaining essentially unchanged. It was popularised in the 1960s 
		with the release of Letraset sheets containing Lorem Ipsum passages, and more 
		recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. 
	</v:accordionItem>
	<v:accordionItem title="The Lorem Ipsum">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 
		tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
		quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
		Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
		eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt 
		in culpa qui officia deserunt mollit anim id est laborum.
	</v:accordionItem>  
</v:accordion>

<h3>Breadcrumb</h3>
<v:breadcrumb id="Breadcrumb">
	<li><a href="#">Categories</a></li>  
    <li><a href="#">Sports</a></li>  
    <li><a href="#">Football</a></li>  
    <li><a href="#">Countries</a></li>  
    <li><a href="#">Spain</a></li>  
    <li><a href="#">F.C. Barcelona</a></li>  
    <li><a href="#">Squad</a></li>  
    <li><a href="#">Lionel Messi</a></li>  
</v:breadcrumb>

<h3>Panel</h3>
<v:panel id="panel" title="more Lorem ipsum..." toggleable="true" >
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod 
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore 
eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt 
in culpa qui officia deserunt mollit anim id est laborum.
</v:panel>







<v:scripts/>
</body>
</html>