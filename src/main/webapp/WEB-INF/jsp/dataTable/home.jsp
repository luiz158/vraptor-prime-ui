<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Data Tables</title>
</head>
<body>

<%@include file="/WEB-INF/jspf/dependencies.jspf" %>

<div id="messages"></div>  

<h3 class="title title-short">DataTable with full data</h3>
<div id="dataTable"></div>  


<script type="text/javascript">
$(function() {
	//Data table with Lazy
	
	$('#dataTable').puidatatable({
	    caption: 'Products',
	    lazy: true,
	    paginator: {
	    	rows : 5, 
	    	totalRecords:20
	    },
	    columns: [
	        {field:'name', headerText: 'Name', sortable: true},
	        {field:'price', headerText: 'Price', sortable: true},
	        {field:'stockSize', headerText: 'Stock Size', sortable: true}
	    ],
	    datasource: function(callback, state) {
	    	var uri = 'lazyData/' + state.first + "/" + this.options.paginator.rows;  
	    	if(state.sortField) {  
                uri += '?request.sort=' + state.sortField + '&request.order=' + state.sortOrder;  
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
	
});

</script>

</body>
</html>