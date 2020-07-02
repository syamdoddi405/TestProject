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
	<center>
		<h1>Add New Employee</h1>
		<form:form method="post" action="save" modelAttribute="command">
			<table>
				<tr>
					<td>Name :</td>
					<td><form:input path="name" /> <form:errors path="name"
							cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>MobileNumber :</td>
					<td><form:input path="mobileNumber" />
						<form:errors path="mobileNumber" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>MailId :</td>
					<td><form:input path="mailId" />
						<form:errors path="mailId" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><form:input path="password" /> <form:errors
							path="password" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>Salary :</td>
					<td><form:input path="salary" />
						<form:errors path="salary" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>Designation :</td>
					<td><form:input path="designation" />
						<form:errors path="designation" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>Address :</td>
					<td><form:input path="address" />
						<form:errors path="address" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Save" /></td>
				</tr>
			</table>
		</form:form>
	</center>
</body>
</html>
