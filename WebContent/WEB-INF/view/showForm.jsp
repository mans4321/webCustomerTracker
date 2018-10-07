<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
	
</head>
<body>

	<div class="wrapper">
		<div class="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
		<h3>Save Customer</h3>
			
		<form:form  action= "saveCustomer"  modelAttribute="customer"  method="POST">
			<form:hidden path="id"/>
			<table>
				<tbody>
					<tr>
						<td><label>First Name :</label></td>
						<td><form:input path="firstName"></form:input>></td>
					</tr>
					<tr>
						<td><label>Last Name :</label></td>
						<td><form:input path="lastName"></form:input></td>
					</tr>
					<tr>
						<td><label>email :</label></td>
						<td><form:input path="email"></form:input></td>
					</tr>
						<tr>
						<td></td>
						<td><input type="submit" value="Save" class="save"></input></td>
					</tr>
				</tbody>
			</table>
			
		</form:form>
		
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</p>
	
	</div>
	</div>
	
</body>
</html>