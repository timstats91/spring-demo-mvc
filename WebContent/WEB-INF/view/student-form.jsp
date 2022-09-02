<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html>
	<head>
		<title>Student Registration Form</title>
	</head>
	
	<body>
		<form:form action="processForm" modelAttribute="student">
			First Name: <form:input path="firstName" /><br><br>
			Last Name: <form:input path="lastName" /><br><br>
			Country: 
				<form:select path="country">
					<form:options items="${ student.countryOptions }" />
				</form:select><br><br>
			Favorite Language: <br>
				<nbsp><form:radiobutton path="favoriteLanguage" value="Java" /> Java <br>
				<nbsp><form:radiobutton path="favoriteLanguage" value="C#" /> C# <br>
				<nbsp><form:radiobutton path="favoriteLanguage" value="PHP" /> PHP <br>
				<nbsp><form:radiobutton path="favoriteLanguage" value="Ruby" /> Ruby <br><br>
			Operating Systems:<br>
				<nbsp><form:checkbox path="operatingSystems" value="Linux" /> Linux <br>
				<nbsp><form:checkbox path="operatingSystems" value="MS Windows" /> MS Windows <br>
				<nbsp><form:checkbox path="operatingSystems" value="Mac OS" /> Mac OS <br>
			<br><br>	
			<input type="submit" value="Submit" />
		</form:form>
	</body>
</html>