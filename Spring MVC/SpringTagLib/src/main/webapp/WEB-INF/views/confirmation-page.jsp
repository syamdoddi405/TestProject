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
	<div>
		<p>Your reservation is confirmed successfully. Please, recheck the
			details</p>
		FirstName:${reservation.firstName} <br>
		LastName:${reservation.lastName} <br /> Gender: ${reservation.gender }<br />
		Meals:
		<ul>
			<c:forEach var="meal" items="${reservation.food }">
				<li>${meal}</li>
			</c:forEach>

		</ul>
		Leaving From: ${reservation.cityFrom}<br /> 
		Going To: ${reservation.cityTo }
	</div>
</body>
</html>