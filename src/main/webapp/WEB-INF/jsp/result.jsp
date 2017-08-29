<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache"> 
    <meta http-equiv="Cache-Control" content="no-cache"> 
    <meta http-equiv="Expires" content="Sat, 01 Dec 2001 00:00:00 GMT">
     <link href="../../static/css/style.css" rel="stylesheet" type="text/css">
    
    <title>Home</title>
</head>
<body>

	<jsp:include page="NavBar.jsp"/>
	<div class="container">
		<div class="panel-group">
	        <div class="panel panel-default">
	          <div class="panel-heading">
	            <h5 class="panel-title text-center">
	              <p1>${record.getHeadline()}</p1>
	            </h5>
	          </div>
	          <div class="panel-collapse">
	            <div class="panel-body">
	             	<span class="label label-primary">ID: ${record.getId()}</span>
	              	<span class="label label-primary">Agency: ${record.getAgency()}</span>
	              	<span class="label label-primary"><a href="${record.getAddress()}" style="color:inherit;">${record.getAddress()}</a></span>
            			<p>${record.getContent()}</p>
            			<div class="btn-group pull-right" role="group" aria-label="...">
					  <button type="button" class="btn btn-default">Extract Keywords</button>
					  <button type="button" class="btn btn-default">Extract People</button>
					  <button type="button" class="btn btn-default">Extract Organizations</button>
					  <button type="button" class="btn btn-default">Extract Locations</button>
					</div>
	            </div>
	          </div>
	        </div>
		</div>
	</div>

</body>
</html>