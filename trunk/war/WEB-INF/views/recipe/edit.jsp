
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Edit Recipe</title>
</head>
<body>

	<form:form modelAttribute="recipe">
		<table>
		<tr>
                <td>Recipe Owner:</td>
                <td>${recipe.user}</td>
            </tr>
			<tr>
				<td>Title:</td>
				<td><form:input path="title" /><form:errors path="title" /></td>
			</tr>
			 <tr>
                <td valign="top">Body:</td>
                <td><form:textarea path="body" cols="80" rows="25"/><form:errors path="body" /></td>
            </tr>
			<tr>
				<td colspan="2"><input type="submit" value="Save Changes" /></td>
			</tr>
		</table>
	</form:form>


</body>
</html>
