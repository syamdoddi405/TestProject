<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

</head>
<body>
	<h1>Edit Employee</h1>
	<form:form method="POST" action="/SpringCrud/editsave"
		modelAttribute="command">
		<table>
			<tr>
				<td></td>
				<td><form:hidden path="id" /></td>
			</tr>
			<tr>
				<td>Name :</td>
				<td><form:input path="name" /> <form:errors path="name"
						cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td>MobileNumber :</td>
				<td><form:input path="mobileNumber" /></td>
			</tr>
			<tr>
				<td>MaildId :</td>
				<td><form:input path="mailId" type='mail' /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><form:input path="password" type='password' /> <form:errors
						path="password" cssClass="error"></form:errors></td>
			</tr>
			<tr>
				<td>Salary :</td>
				<td><form:input path="salary" /></td>
			</tr>
			<tr>
				<td>Designation :</td>
				<td><form:input path="designation" /></td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><form:input path="address" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Edit Save" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>