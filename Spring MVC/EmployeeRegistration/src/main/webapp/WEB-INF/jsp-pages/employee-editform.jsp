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
	<form:form action="/EmployeeRegistration/editsave" method="POST" modelAttribute="command">
		<table>
	
			
			<form:hidden path="emp_Id" />
		
			
			<tr>
				<td>Name :</td>
				<td><form:input path="emp_name" /></td>
			</tr>
			<tr>
				<td>MobileNumber :</td>
				<td><form:input path="emp_mobileNumber" /></td>
			</tr>
			<tr>
				<td>MaildId :</td>
				<td><form:input path="emp_mailId"  /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><form:input path="password" type='password'/></td>
			</tr>
			<tr>
				<td>DOB :</td>
				<td><form:input path="emp_DOB" type='date' /></td>
			</tr>
			<tr>
				<td>Gender :</td>
				<td><form:radiobutton path="emp_gender" value = "male" />Male<br>
					<form:radiobutton path="emp_gender" value = "female" />Female<br>
				</td>
			</tr>
			<tr>
				<td>Address :</td>
				<td><form:textarea path="emp_address" /></td>
			</tr>
			<tr>
				<td>Joining Date :</td>
				<td><form:input path="emp_JDate" type='date'/></td>
			</tr>
			<tr>
				<td>Department :</td>
				<td><select name = "emp_department">
				<option value = "Department">Select</option>
				<option value = "HR">HR</option>
				<option value = "Developer">Developer</option>
				<option value = "Testing">Testing</option>
				<option value = "Finance">Finance</option>
				<option value = "Others">Others</option>
			</select><br></td>
			</tr>
			<tr>
				<td>Salary :</td>
				<td><form:input path="emp_salary" /></td>
			</tr>

			<tr>
				<td></td>
				<td><input type="submit" value="Save" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>