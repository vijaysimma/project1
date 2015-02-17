<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Supervisor</title>
</head>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body bgcolor="#B6CBF2">
	<center>
	
		<h2>Please Select your Supervisor</h2>

		<form method="POST" action="question.jsp">
			<form:select path="supervisorlist" items="${supervisorlist}"
				name="supervisor"></form:select>
			<input type="submit" value="Submit">
		</form>
	</center>
</body>
</html>
