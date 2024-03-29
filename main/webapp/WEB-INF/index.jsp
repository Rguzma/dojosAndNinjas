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
<title>List of Dojos</title>
</head>
<body>
	<h1>
		List of Dojos
	</h1>
	<div>
	
	<ul><c:forEach items="${dojo}" var="d">

		<li><a href="details/dojo/${d.id}"><c:out value="${d.name}"/> </a></li>
		</c:forEach>
	</ul>
	
	<div>
	
	</div>
		<a href="/new/dojo">Create New Dojo</a>
		<a href= "/new/ninja">Add a new ninja</a>
		
	</div>
</body>
</html>