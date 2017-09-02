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
					  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#Keywords">Extract Keywords</button>
					  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#People">Extract People</button>
					  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#Organizations">Extract Organizations</button>
					  <button type="button" class="btn btn-default" data-toggle="modal" data-target="#Locations">Extract Locations</button>
					</div>
	            </div>
	          </div>
	        </div>
		</div>
	</div>

	  <!-- Modal -->
	  <div class="modal fade" id="Keywords" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Extract Keywords</h4>
	        </div>
	        <div class="modal-body">
	         <c:forEach var="r" items="${record.extractKeyword()}">
	          <span class="badge badge-pill badge-info">${r}</span>
	         </c:forEach>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	      
	    </div>
	  </div>
	  
	  	  <!-- Modal -->
	  <div class="modal fade" id="People" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Extract People</h4>
	        </div>
	        <div class="modal-body">
	         <c:forEach var="r" items="${record.extractName()}">
	         	<span class="badge badge-pill badge-info">${r}</span>
	         </c:forEach>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	      
	    </div>
	  </div>
	  
	  	  <!-- Modal -->
	  <div class="modal fade" id="Organizations" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Extract Organizations</h4>
	        </div>
	        <div class="modal-body">
	         <c:forEach var="r" items="${record.extractOrganizations()}">
	          <span class="badge badge-pill badge-info">${r}</span>
	         </c:forEach>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	      
	    </div>
	  </div>
	  
	  
	  	  <!-- Modal -->
	  <div class="modal fade" id="Locations" role="dialog">
	    <div class="modal-dialog">
	    
	      <!-- Modal content-->
	      <div class="modal-content">
	        <div class="modal-header">
	          <button type="button" class="close" data-dismiss="modal">&times;</button>
	          <h4 class="modal-title">Extract Locations</h4>
	        </div>
	        <div class="modal-body">
	         <c:forEach var="r" items="${record.extractLocations()}">
	          <span class="badge badge-pill badge-info">${r}</span>
	         </c:forEach>
	        </div>
	        <div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	      
	    </div>
	  </div>

</body>
</html>