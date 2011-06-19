
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Edit Category</title>
</head>
<body>

	<form:form modelAttribute="category">
		<table>
			<tr>
				<td>Category Owner:</td>
				<td>${category.user}</td>
			</tr>
			<tr>
				<td>Date Created:</td>
				<td>${category.dateCreated}</td>
			</tr>
			<tr>
				<td>Category Name:</td>
				<td><form:input path="name" /> <form:errors path="name" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Save Changes" /></td>
			</tr>
		</table>
	</form:form>
</body>
</html>
