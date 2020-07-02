<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form action="helloagain" modelAttribute="emp">
		Username: <form:input path="name" />
		<br>
		<br>
		
		Password (*): <form:password path="password" />
		<form:errors path="password" cssClass="error" />
		<br>
		<br>
		
		Age (*): <form:input path="age" />
		<form:errors path="age" cssClass="error" />
		<br>
		<br>
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>










