<%@tag language="java" dynamic-attributes="attrs" body-content="empty" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" %>
<%@attribute name="name" required="true"  %>
<%@attribute name="url" required="true" %>
<%@attribute name="type" %>

<u:default varName="id" defaultValue="${name}"/>
<u:default varName="type" defaultValue="text"/>

<input id="${id}" name="${name}" type="${type}"
	<c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach> 
/>

<u:jsStore>
<script>
	$('#${id}').puiautocomplete({
	    effect: 'fade',
	    effectSpeed: 'fast',
	    content: function(data){return data.label;},
	    completeSource:function(request, response) {
	        $.ajax({
	            type: "GET",
	            url: '${url}',
	            data: {query: request.query},
	            dataType: "json",
	            context: this,
	            success: function(source) {
	                data = [];
	                for(var i = 0 ; i < source.length; i++) {
	                	var item = source[i];                        	
	                   	data.push({label:item});
	                }
	                
	                this._handleData(data);
	                response.call(this, data);
	            }
	        });
	    }
	});
</script>
</u:jsStore>
