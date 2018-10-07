<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
	<div class="wrapper">
		<div class="header">
		<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div class="container">
		<div class="content">
		<input type="button" value="Add Customer" 
		onclick="window.location.href='showFormForAdd'; return false;"
		class="add-button"
		/> 
		
			<!--  add a search box -->
			<form:form action="search" method="POST">
				Search customer: <input type="text" name="theSearchName" />
				
				<input type="submit" value="Search" class="add-button" />
			</form:form>
			
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				<c:forEach var="customer"  items="${customers}">
					<c:url  var="updateLink" value="/customer/showFormForUpdate">
							<c:param name="customerId" value="${customer.id}" />
					</c:url>
					
					<c:url  var="deleteLink" value="/customer/delete">
							<c:param name="customerId" value="${customer.id}" />
					</c:url>
					
						<tr> 
							<td>${customer.firstName}</td>
							<td>${customer.lastName}</td>
							<td>${customer.email}</td>
							<td><a  href="${updateLink}" >Update</a> |
							 <a  href="${deleteLink}" onclick="if ( !(confirm('are sure you want to delete this customer?') ) ) return false" >Delete</a> </td>
						</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>