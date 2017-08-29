<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Result</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="static/js/ajaxTable.js"></script>

</head>
<body>
<div role="navigation">
	<div class="navbar navbar-inverse">
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><a href="/">Home</a></li>
				<li><a href="search">Search</a></li>
				<li><a href="<c:url value='/2' />">Sitemap</a></li>
				<li><a href="all-tasks">Contact Us</a></li>
			</ul>
		</div>
	</div>
</div>
<form:form action="" method="GET">
<h2 >Search Result<br><br></h2>
<table width="100%" style="border: 3px;background: rgb(243, 244, 248);"><tr><td>
	<table id="table" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>id</th>
     			<th>uuid</th>
     			<th>agency</th>
     			<th>address</th>
     			<th>city</th>
     			<th>headline</th>
            </tr>
        </thead>       
    </table>
    </td></tr></table>
</form:form>
</body>
</html>