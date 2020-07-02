<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<h2 id="article_header" class="text-warning" align="center"> EMPLOYEE DETAILS</h2>
		<div></div>

		<!-- Div to add a new user to the mongo database -->
		<div id="add_new_user">
			<c:url var="addUrl" value="/user/add" />
			<a id="add" href="${addUrl}" class="btn btn-success">Add user</a>
		</div>
		<div></div>

		<!-- Table to display the user list from the mongo database -->
		<table id="users_table" class="table">
			<thead>
				<tr align="center">
					<th>Id</th>
					<th>Name</th>
					<th>Address</th>
					<th>Mobile Number</th>
					<th>EmailID</th>
					<th>Gender</th>
					<th>DOB</th>
					<th>Joining Date</th>
					<th>Department</th>
					<th>Salary</th>

					<th colspan="2"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${users}" var="user">
					<tr align="center">
						<td><c:out value="${user.id}" /></td>
						<td><c:out value="${user.name}" /></td>
						<td><c:out value="${user.address}" /></td>
						<td><c:out value="${user.mobileNumber}" /></td>
						<td><c:out value="${user.emailId}" /></td>
						<td><c:out value="${user.gender}" /></td>
						<td><c:out value="${user.DOB}" /></td>
						<td><c:out value="${user.joiningDate}" /></td>
						<td><c:out value="${user.department}" /></td>
						<td><c:out value="${user.salary}" /></td>

						<td><c:url var="editUrl" value="/user/edit?id=${user.id}" /><a
							id="update" href="${editUrl}" class="btn btn-warning">Update</a>
						</td>
						<td><c:url var="deleteUrl" value="/user/delete?id=${user.id}" /><a
							id="delete" href="${deleteUrl}" class="btn btn-danger">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>