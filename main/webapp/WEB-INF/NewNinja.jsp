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
<title>New Dojo</title>
</head>
<body>
	<h1>
	New Ninja
	</h1>
			<form:form action="/new/ninja" method="post" modelAttribute="ninja">
			<div class="form-group">
				<div>
				<form:label path="dojo">Dojo Location</form:label>
		        <form:errors path="dojo"/>
		        <form:select class="form-control" path="dojo">
		        <c:forEach items="${ dojo }" var="dojo">
		        	<option value="${ dojo.id }">${ dojo.name }</option>
		        </c:forEach>
		        </form:select>
		        </div>
		        <div>
		      	<form:label path="first_name">First Name</form:label>
		        <form:errors path="first_name"/>
		        <form:input type= "text" class="form-control" path="first_name"/>
		        </div>
		        <div>
		       	<form:label path="last_name">Last Name</form:label>
		        <form:errors path="last_name"/>
		        <form:input type= "text" class="form-control" path="last_name"/>
		        </div>
		        <div>
		        <form:label path="age">Age</form:label>
		        <form:errors path="age"/>
		        <form:input type="number" class="form-control" path="age"/>
		        </div>
		      	<input type="submit" value="Submit"/>
			</form:form>
			</div>

</body>
</html>