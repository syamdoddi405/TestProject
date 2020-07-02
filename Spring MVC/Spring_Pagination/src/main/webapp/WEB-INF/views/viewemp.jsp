<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Employees List</h1>
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>Id</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>MobileNumber</th>
			<th>Mailid</th>
			<th>salary</th>
			<th>Employee Designation</th>
			<th>Address</th>
		</tr>
		<c:forEach var="emp" items="${msg}">
			<tr>
				<td>${emp.id}</td>
				<td>${emp.firstName}</td>
				<td>${emp.lastName}</td>
				<td>${emp.mobileNumber}</td>
				<td>${emp.mailId}</td>
				<td>${emp.salary}</td>
				<td>${emp.employee_designation}</td>
				<td>${emp.address}</td>
			</tr>
		</c:forEach>

	</table>
	<br>
	<a href="/Spring_Pagination/viewemp/1"> 1 </a>
	<a href="/Spring_Pagination/viewemp/2"> 2 </a>
	<a href="/Spring_Pagination/viewemp/3"> 3 </a>


</body>
</html>