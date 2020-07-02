<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.error {
	color: red;
}
</style>
<meta charset="ISO-8859-1">
<title>Form Validation using spring mvc bean API</title>
</head>
<body>
	<center>
		<h1>Employee Login</h1>
		<form:form action="helloagain" modelAttribute="emp">
			<table>
				<tr>
					<td>Username:</td><i>length must be 12</i>
					<td><form:input path="userName" /> <form:errors
							path="userName" cssClass="error" /></td>
				</tr>
				<br />
				<br />
				<tr>
					<td>Password:</td>
					<td><form:password path="password" />&nbsp;<i>password must min 8</i>
						characters <form:errors path="password" cssClass="error" /></td>
					<br />
					<br />
				</tr>
				<tr>
					<td>Age:</td>
					<td><form:input path="age" />&nbsp<i>age must be between 0 to 100</i>
						years <form:errors path="age" cssClass="error" /></td>
					<br />
					<br />
				</tr>
				<tr>
					<td>Address:</td>
					<td><form:input path="address" />  <form:errors
							path="address" cssClass="error" /></td>
					<br />
					<br />
				</tr>
				<tr>
					<td><input type="submit" value="submit"></td>
				</tr>
			</table>
		</form:form>
	</center>

</body>
</html>