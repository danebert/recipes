
<%@ page import="com.mathin.recipes.Category"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'category.label', default: 'Category')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
	<a href="#list-category" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><a class="home" href="${createLink(uri: '/management')}">Manage Display</a></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="edit" action="order" id="order">
            Change Display Order
          </g:link></li>
		</ul>
	</div>
	<div id="list-category" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.list.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Rank</th>
					<th>Owner</th>
					<th>SubCategories</th>
				</tr>
			</thead>
			<tbody>
				<g:each in="${categoryInstanceList}" status="i"
					var="categoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td><g:link action="show" id="${categoryInstance.id}">
								${fieldValue(bean: categoryInstance, field: "name")}
							</g:link></td>

						<td>
							${fieldValue(bean: categoryInstance, field: "rank")}
						</td>

						<td>
							${fieldValue(bean: categoryInstance, field: "owner.username")}
						</td>

						<td><g:each in="${categoryInstance.subCategories}"
								var="subCategoryInstance">
								${fieldValue(bean: subCategoryInstance, field: "rank")}
								<g:link controller="subCategory" action="show"
									id="${subCategoryInstance.id}">
									${fieldValue(bean: subCategoryInstance, field: "name")}
								</g:link>
								<br />
							</g:each> <g:link class="edit" action="order" id="order"
								controller="subCategory"
								params="${[category: categoryInstance.id]}">
            Change Display Order
          </g:link></td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>
</body>
</html>
