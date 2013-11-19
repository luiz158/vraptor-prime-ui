<%@tag language="java" dynamic-attributes="attrs" body-content="empty" pageEncoding="UTF-8"%>
<%@taglib uri="http://vraptor-primeui-utils" prefix="u"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@attribute name="id" required="true"%>
<%@attribute name="columns" required = "true" type="java.lang.String"%>
<%@attribute name="url" required = "true"%>

<%@attribute name="tableHeader" %>
<%@attribute name="rows" %>
<%@attribute name="paramName" %>

<u:default varName="rows" defaultValue="5"/>
<u:default varName="paramName" defaultValue="request"/>

<div id="${id}"
<c:forEach var="a" items="${attrs}">${a.key} = "${a.value}"</c:forEach>
></div>

<u:jsStore>
<script>
$('#${id}').puidatatable({
    caption: '${tableHeader}',
    lazy: true,
    paginator: {
    	rows : ${rows}, 
    	totalRecords:0
    },
    columns:${columns},
    datasource: function(callback, state) {
    	var paramName = '${paramName}';
    	var uri = '${url}?' + paramName + '.first=' + state.first +  
    			        "&" + paramName + '.rows=' + this.options.paginator.rows;
    	
    	if(state.sortField) {  
               uri += '&' + paramName + '.sort=' + state.sortField + 
                      '&' + paramName + '.order=' + state.sortOrder;
		}
           
        $.ajax({
            type: "GET",
            url: uri,
            dataType: "json",
            context: this,
            success: function(response) {
            	this.options.paginator.totalRecords = response.totalSize;
                callback.call(this, response.items);
            }
        });
    },
    selectionMode: 'multiple'
});
</script>
</u:jsStore>
