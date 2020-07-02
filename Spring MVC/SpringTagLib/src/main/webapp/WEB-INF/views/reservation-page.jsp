<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration from</title>
</head>
<body>
	<h3>Railway Reservation Form</h3>
	<form:form action="submitForm" modelAttribute="reservation">
	FirtName:<div>
			<form:input path="firstName" />
			<br />
		</div>
	LastName:<div>
			<form:input path="lastName" />
			<br />
		</div>
		Gender:<div>
			<form:radiobutton path="gender" value="male" />
			Male
			<form:radiobutton path="gender" value="female" />
			Female <br />
		</div>
		Food:<div>
			<form:checkbox path="food" value="breakfast" />
			Breakfast
			<form:checkbox path="food" value="lunch" />
			Lunch
			<form:checkbox path="food" value="dinner" />
			Dinner<br />
		</div>
		<div>
			Leave from:
			<form:select path="cityFrom">
				<form:option value="Visakhapatnam" label="Visakhapatnam"></form:option>
				<form:option value="Chennai" label="Chennai"></form:option>
				<form:option value="Hyderabad" label="Hyderabad"></form:option>
				<form:option value="Bengaluru" label="Bengaluru"></form:option>
				<form:option value="pune" label="pune"></form:option>
				<form:option value="Mumbai" label="Mumbai"></form:option>
			</form:select>
			Going to:
			<form:select path="cityTo">
				<form:option value="Visakhapatnam" label="Visakhapatnam"></form:option>
				<form:option value="Chennai" label="Chennai"></form:option>
				<form:option value="Hyderabad" label="Hyderabad"></form:option>
				<form:option value="Bengaluru" label="Bengaluru"></form:option>
				<form:option value="pune" label="pune"></form:option>
				<form:option value="Mumbai" label="Mumbai"></form:option>
			</form:select>
			<br />


		</div>
		<input type="submit" value=Submit>

	</form:form>

</body>
</html>