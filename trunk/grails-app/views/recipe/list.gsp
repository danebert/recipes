
<%@ page import="com.mathin.recipes.Recipe" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recipe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-recipe" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'recipe.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="body" title="${message(code: 'recipe.body.label', default: 'Body')}" />
					
						<th><g:message code="recipe.category.label" default="Category" /></th>
					
						<th><g:message code="recipe.subCategory.label" default="Sub Category" /></th>
					
						<g:sortableColumn property="createdDate" title="${message(code: 'recipe.createdDate.label', default: 'Created Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${recipeInstanceList}" status="i" var="recipeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${recipeInstance.id}">${fieldValue(bean: recipeInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: recipeInstance, field: "body")}</td>
					
						<td>${fieldValue(bean: recipeInstance, field: "category.name")}</td>
					
						<td>${fieldValue(bean: recipeInstance, field: "subCategory.name")}</td>
						
						<td><g:formatDate date="${recipeInstance.createdDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${recipeInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
