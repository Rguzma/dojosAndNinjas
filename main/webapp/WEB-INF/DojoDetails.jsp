<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojo and ninjas</title>
</head>
<body>
	<nav>
		<a href= "/">List of dojos</a>
		
	</nav>
	<h1>
		<c:out value="${dojo.name}"/> Location Ninjas
	</h1>
	<div>
		<table>
		<thead>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Age</th>
			</tr>
		</thead>
		<tbody><c:forEach items="${ninja}" var="ninjas">
			<tr>
				<td>
				<c:out value="${ninjas.first_name}"/>
				</td>
		
				<td>
				<c:out value="${ninjas.last_name}"/>
				</td>
				<td>
				<c:out value="${ninjas.age}"/>
				</td>
			</tr>
			</c:forEach>
		</tbody>
		</table>
	</div>
</body>
</html>