<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.tdClass {
	text-align: left !important;
	font-style: normal;
	font-size:14px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Select Supervisor</title>
</head>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<body bgcolor="#B6CBF2">
	<center>
		<h2>Survey Questions</h2>
		<form action="answer" method="POST">
			<input type="hidden" name="supervisor"
				value="<%= request.getParameter("supervisor") %>" id="supervisor">
			<Table border=1 cellpadding="1" cellspacing="1" bordercolor="blue">
				<tr  class="tdClass" >
					<td >1</td>
					<td  >To what extent do you have trust and confidence in the overall job being done by your immediate manager/supervisor?</td>
					<td ><input type="radio" value="StronglyAgree" name="one">Strongly Agree
					</td>
					<td ><input type="radio" value="Agree" name="one">Agree
					</td>
					<td ><input type="radio" value="Disagree"
						name="one">Disagree</td>
						<td ><input type="radio" value="StronglyDisagree"
						name="one">Strongly Disagree</td>
				</tr>
				<tr  class="tdClass" >
					<td>2</td>
					<td >I feel motivated to go beyond my formal job responsibilities</td>
						<td width="10%"><input type="radio" value="StronglyAgree" name="two">Strongly Agree
					</td>
					<td><input type="radio" value="Agree" name="two">Agree
					</td>
					<td><input type="radio" value="Disagree" name="two">Disagree
					</td>
					<td width="10%"><input type="radio" value="StronglyDisagree" name="two">Strongly Disagree
					</td>
				</tr>
				<tr class="tdClass">
					<td>3</td>
					<td >My job provides me the opportunity to be
						innovative and creative</td>
						<td width="10%"><input type="radio" value="StronglyAgree" name="three">Strongly Agree
					</td>
					<td><input type="radio" value="Agree" name="three">Agree
					</td>
					<td><input type="radio" value="Disagree" name="three">Disagree</td>
					<td width="10%"><input type="radio" value="StronglyDisagree" name="three">Strongly Disagree
					</td>
				</tr>
				<tr class="tdClass">
					<td>4</td>
					<td >Providing you with clear and ongoing
						performance feedback</td>
						<td width="10%"><input type="radio" value="StronglyAgree" name="four">Strongly Agree
					</td>
					<td><input type="radio" value="Agree" name="four">Agree
					</td>
					<td><input type="radio" value="Disagree" name="four">Disagree</td>
					<td width="10%"><input type="radio" value="StronglyDisagree" name="four">Strongly Disagree
					</td>
				</tr>
				<tr class="tdClass">
					<td>5</td>
					<td >When changes are made where I work, communications are timely and
effective  by Immediate Supervisor
</td>
					<td width="10%"><input type="radio" value="StronglyAgree" name="five">Strongly Agree
					</td>
					<td><input type="radio" value="Agree" name="five">Agree
					</td>
					<td><input type="radio" value="Disagree" name="five">Disagree</td>
						<td width="10%"><input type="radio" value="StronglyDisagree" name="five">Strongly Disagree
					</td>
				</tr>


<tr  class="tdClass" >
					<td>6</td>
					<td >Conditions in my job allow me to be as productive as I can be

					</td>
						<td width="10%"><input type="radio" value="StronglyAgree" name="six">Strongly Agree
					</td>
					<td><input type="radio" value="Agree" name="six">Agree
					</td>
					<td><input type="radio" value="Disagree" name="six">Disagree
					</td>
					<td width="10%"><input type="radio" value="StronglyDisagree" name="six">Strongly Disagree
					</td>
				</tr>
				
				<tr  class="tdClass" >
					<td>7</td>
					<td >Supervisor recognizes and rewards your good work in a timely manner </td>
						<td width="10%"><input type="radio" value="StronglyAgree" name="seven">Strongly Agree
					</td>
					<td><input type="radio" value="Agree" name="seven">Agree
					</td>
					<td><input type="radio" value="Disagree" name="seven">Disagree
					</td>
					<td width="10%"><input type="radio" value="StronglyDisagree" name="seven">Strongly Disagree
					</td>
				</tr>
				
				
				<tr  class="tdClass" >
					<td>8</td>
					<td >Supervisor keeps you informed about important business matters in a timely manner</td>
						<td width="10%"><input type="radio" value="StronglyAgree" name="eight">Strongly Agree
					</td>
					<td><input type="radio" value="Agree" name="eight">Agree
					</td>
					<td><input type="radio" value="Disagree" name="eight">Disagree
					</td>
					<td width="10%"><input type="radio" value="StronglyDisagree" name="eight">Strongly Disagree
					</td>
				</tr>
				
				<tr  class="tdClass" >
					<td>9</td>
					<td >I feel empowered enough to carry out my job effectively</td>
						<td width="10%"><input type="radio" value="StronglyAgree" name="nine">Strongly Agree
					</td>
					<td><input type="radio" value="Agree" name="nine">Agree
					</td>
					<td><input type="radio" value="Disagree" name="nine">Disagree
					</td>
					<td width="10%"><input type="radio" value="StronglyDisagree" name="nine">Strongly Disagree
					</td>
				</tr>
				
				
					<tr  class="tdClass" >
					<td>10</td>
					<td >My job provides me the opportunity to be innovative and creative</td>
						<td width="10%"><input type="radio" value="StronglyAgree" name="ten">Strongly Agree
					</td>
					<td><input type="radio" value="Agree" name="ten">Agree
					</td>
					<td><input type="radio" value="Disagree" name="ten">Disagree
					</td>
					<td width="10%"><input type="radio" value="StronglyDisagree" name="ten">Strongly Disagree
					</td>
				</tr>
				
				
				
			</Table>

			<input type="submit" value="Submit">
		</form>
	</center>
</body>
</html>
