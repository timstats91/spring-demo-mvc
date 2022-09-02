<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html>
	<head>
		<title>Customer Registration Form</title>
		<style>
			.error {color: red}
		</style>
	</head>
	
	<body>
		<p><i>Fill out the form. Asterisk (*) means required field.</i></p>
		<form:form action="processForm" modelAttribute="customer">
			First Name: <form:input path="firstName" /><br><br>
			Last Name(*): <form:input path="lastName" />
			<form:errors path="lastName" cssClass="error" /><br><br>
			<input type="submit" value="Submit" />
		</form:form>
	</body>
</html>