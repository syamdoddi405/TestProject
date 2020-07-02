<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Add Employee</h1>
	<form:form method="post" modelAttribute="employeeEntity"
		action="addEmployee">
	FirstName:<form:input path="firstName" />
		<br />
	LastName:<form:input path="lastname" />
		<br />
		<input type="submit" value="submit">

	</form:form>

</body>
</html>