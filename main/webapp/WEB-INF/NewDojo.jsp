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
<title>New Dojo</title>
</head>
<body>
	<h1>
	New Dojo
	</h1>
		<div>
			<form:form action="/new/dojo" method="post" modelAttribute="dojo">
			<div class="form-group">
		        <form:label path="name">Dojo Name</form:label>
		        <form:errors path="name"/>
		        <form:input type= "text" class="form-control" path="name"/>
		    </div>
		    <input type="submit" value="Submit"/>
		</form:form>
		</div>
</body>
</html>