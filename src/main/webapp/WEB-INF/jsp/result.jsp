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
	<h1>Result</h1>

	<div class="container">
		<div class="panel-group" id="accordion1">
	    <c:forEach var="result" items="${results}">
	        <div class="panel panel-default">
	          <div class="panel-heading">
	            <h5 class="panel-title">
	              <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#accordion1_${result.getId()}">${result.getHeadline()}</a>
	            </h5>
	          </div>
	          <div id="accordion1_${result.getId()}" class="panel-collapse collapse">
	            <div class="panel-body">
	              <p>${result.getContent()}</p>
	            </div>
	          </div>
	        </div>
	    </c:forEach>
	  </div>
	</div>

</body>
</html>