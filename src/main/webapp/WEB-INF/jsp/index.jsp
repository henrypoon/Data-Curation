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
    <link href="<c:url value="static/css/style.css" />" rel="stylesheet">
    
    <title>Home</title>
</head>
<body>

	<jsp:include page="NavBar.jsp"/>
	<h1>Records</h1>
	 <div class="row">
	    <div id="filter-panel">
	        <div class="panel panel-default">
	            <div class="panel-body">
	                <form class="form-inline" role="form" method="get" action="/">
	                    <div class="form-group">
	                        <label class="filter-col" style="margin-right:0;" for="pref-perpage">Rows per page:</label>
	                        <select id="pref-perpage" class="form-control" name="options">
	                            <option selected="selected" value="10">10</option>
	                            <option value="100">100</option>
	                            <option value="1000">1000</option>
	                            <option value="all">All</option>
	                        </select>                                
	                    </div> <!-- form group [rows] -->
	                    <div class="form-group">    
	                        <button type="submit" class="btn btn-default filter-col">
	                            <span class="glyphicon glyphicon-record"></span> Save Settings
	                        </button>  
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div> 
	</div> 
		
	<div class="container">
		<div class="panel-group" id="accordion1">
	    <c:forEach var="record" items="${records}">
	        <div class="panel panel-default">
	          <div class="panel-heading">
	            <h5 class="panel-title">
	              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_${record.getId()}">${record.getHeadline()}</a>
	            </h5>
	          </div>
	          <div id="accordion1_${record.getId()}" class="panel-collapse collapse">
	            <div class="panel-body">
	              <p>${record.getContent()}</p>
	            </div>
	          </div>
	        </div>
	    </c:forEach>
	  </div>
	</div>

</body>
</html>