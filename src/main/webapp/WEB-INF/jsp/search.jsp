<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
<jsp:include page="NavBar.jsp"/>
<script type="text/javascript" src="static/js/searchBox.js"></script>
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<form class="form-horizontal" method="GET" action="resultTable">
<div class="container" >
		<div class="text-center">
				<h1>Result</h1>
		</div>
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    	<span id="search_concept">Search by</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="#agency">Agency</a></li>
                      <li><a href="#headline">Headline</a></li>
                      <li><a href="#publish_date">Publish Date</a></li>
                      <li><a href="#city">city</a></li>
                      <li><a href="#address">address</a></li>
                      <li><a href="#position">position</a></li>
                      <li><a href="#state">state</a></li>
                      <li><a href="#scontent">content</a></li>
                    </ul>
                </div>
                <input type="hidden" name="type" value="all" id="search_param">  
                <input type="text" class="form-control" name="keyword" placeholder="Searching">
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        </div>
	</div>
</div>
</form>
<div class="container">
    <div class="row">
        <div id="filter-panel" class="collapse filter-panel">
            <div class="panel panel-default">
                <div class="panel-body">
                     <form class="form-horizontal" role="form" method="GET" action="resultTableAdv">
                      <div class="form-group">
                        <label for="contain">Agency</label>
                        <input class="form-control" type="text" name="agency"/>
                      </div>
                      <div class="form-group">
                        <label for="contain">Headline</label>
                        <input class="form-control" type="text" name="headline"/>
                      </div>
                      <div class="form-group">
                        <label for="contain">Publish Date</label>
                        <input class="form-control" type="text" name="publish_date"/>
                      </div>
                      <div class="form-group">
                        <label for="contain">City</label>
                        <input class="form-control" type="text" name="city"/>
                      </div>
                      <div class="form-group">
                        <label for="contain">Address</label>
                        <input class="form-control" type="text" name="address"/>
                      </div>
                      <div class="form-group">
                        <label for="contain">Position</label>
                        <input class="form-control" type="text" name="position"/>
                      </div>
                      <div class="form-group">
                        <label for="contain">State</label>
                        <input class="form-control" type="text" name="state"/>
                      </div>
                      <div class="form-group">
                        <label for="contain">Content</label>
                        <input class="form-control" type="text" name="content"/>
                      </div>
                      <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                    </form>
                </div>
            </div>
        </div>
        <div class="text-center">
	        <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#filter-panel">
	            <span class="glyphicon glyphicon-cog"></span> Advanced Search
	        </button>
        </div>
	</div>
</div>


</body>
</html>