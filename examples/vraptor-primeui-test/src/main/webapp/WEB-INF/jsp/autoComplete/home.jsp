<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
<title>Auto Complete</title>
</head>
<body>

	<%@include file="/WEB-INF/jspf/dependencies.jspf" %>
	
	<script type="text/javascript">
    $(function() {
        $('#remote').puiautocomplete({
            effect: 'fade',
            effectSpeed: 'fast',
            content: function(data){return data.label;},
            completeSource:function(request, response) {
                $.ajax({
                    type: "GET",
                    url: 'autoCompleteForm',
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
    });
</script>

	<h3 class="title title-short">Remote</h3>
	<input id="remote" name="remote" type="text" />
</body>
</html>