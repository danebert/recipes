
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>${recipe.title}</title>
</head>
<body>

	<table>
		<tr>
			<td>Title:</td>
			<td>${recipe.title}</td>
		</tr>
		<tr>
			<td valign="top">Body:</td>
			<td>${recipe.body.value}</td>
		</tr>
	</table>


</body>
</html>
