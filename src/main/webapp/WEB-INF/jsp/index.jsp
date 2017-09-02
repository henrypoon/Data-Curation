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
	<div class="jumbotron vertical-center">
		<div class="container container-table">
			<div class="text-center">
				<h1>Data Curation</h1>
			</div>
			<div class="panel panel-primary">
				<div class="panel-body">
					 <div class="row">
		                <form class="form-inline" role="form" method="get" action="/">
		                    <div class="form-group">
		                        <label class="filter-col" style="margin-right:0;" for="pref-perpage">Rows to display:</label>
		                        <select id="pref-perpage" class="form-control" name="options">
		                        	<c:choose>
    									<c:when test="${num==10}">
			                            <option selected="selected" value="10">10</option>
			                            <option value="100">100</option>
			                            <option value="1000">1000</option>
			                            <option value="0">All</option>
		                            		<br />
		                            	</c:when>
   									<c:when test="${num==100}">
			                            <option value="10">10</option>
			                            <option selected="selected" value="100">100</option>
			                            <option value="1000">1000</option>
			                            <option value="0">All</option>
		                            		<br />
		                            	</c:when>
    	   								<c:when test="${num==1000}">
			                            <option value="10">10</option>
			                            <option value="100">100</option>
			                            <option selected="selected" value="1000">1000</option>
			                            <option value="0">All</option>
		                            		<br />
		                            	</c:when>
                    	   	   			<c:when test="${num==0}">
			                            <option value="10">10</option>
			                            <option value="100">100</option>
			                            <option value="1000">1000</option>
			                            <option selected="selected" value="0">All</option>
		                            		<br />
		                            	</c:when>
		                            	<c:otherwise>
		                            		<option value="10">10</option>
			                            <option value="100">100</option>
			                            <option value="1000">1000</option>
			                            <option value="0">All</option>
		                            		<br />
		                            	</c:otherwise>
		                        </c:choose>
		                            
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
				<div class="panel-footer">
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
				            	<h4>
				              <p>${record.getContent()}</p>
				              <span class="label label-primary">ID: ${record.getId()}</span>
				              <span class="label label-primary">Agency: ${record.getAgency()}</span>
				              <span class="label label-primary"><a href="${record.getAddress()}" style="color:inherit;">${record.getAddress()}</a></span>
				              <span class="label label-info pull-right"><a href="/result/${record.getId()}" style="color:inherit;">Details</a></span>
				            	</h4>
				            </div>
				          </div>
				        </div>
				    </c:forEach>
				  </div>
				</div>
			</div>
		</div> 
	</div>
</body>
</html>