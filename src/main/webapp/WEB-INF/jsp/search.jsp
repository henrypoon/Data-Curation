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

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">
<script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

<script type="text/javascript" src="static/js/ajaxTable.js"></script>


<div class="jumbotron vertical-center">
	<div class="container container-table">
		<div class="text-center">
				<h1>Search</h1>
		</div>
		<table width="100%" style="border: 3px;background: rgb(243, 244, 248);"><tr><td>
			<table id="table" class="display" cellspacing="0" width="100%">
		        <thead>
		            <tr>
		                <th>headline</th>
		     			<th>agency</th>
		     			<th>address</th>
		     			<th>city</th>
		     			<th>id</th>
		            </tr>
		        </thead> 
		        <tfoot>
		            <tr>
		                <th>headline</th>
		                <th>agency</th>
		                <th>address</th>
		                <th>city</th>
		                <th>id</th>
		            </tr>
		        </tfoot>
		        <tbody>
		        		<c:forEach var="record" items="${records}">
			            <tr>
			                <td><a href="/result/${record.getId()}">${record.getHeadline()}</a></td>
			                <td>${record.getAgency()}</td>
			                <td>${record.getAddress()}</td>
			                <td>${record.getCity()}</td>
			                <td>${record.getId()}</td>
			            </tr>
		            </c:forEach>
		        </tbody>      
		    </table>
		    </td></tr>
		</table>
	</div>
</div>
</body>
</html>