<%@ page import="com.mathin.recipes.Category"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'category.label', default: 'Category')}" />
<title><g:message code="default.order.label" args="[entityName]" /></title>

<g:javascript library="jquery" />
<r:require module="jquery-ui" />
<r:require module="jquery-theme" />
<g:javascript library="touchPunch" />
</head>
<body>
	<a href="#list-category" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><a class="home" href="${createLink(uri: '/management')}">Manage Display</a></li>
			<li><g:link class="list" action="list">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-category" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.order.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>

		<form method="POST" action="saveOrder">
			<div id="categories" class="center">
				&nbsp;
				<ul id="sortable" class="rankings">
					<g:each in="${categoryInstanceList}" status="i"
						var="categoryInstance">
						<li id="item_${categoryInstance.id}" class="ui-state-default">
							<span class="ui-icon ui-icon-arrowthick-2-n-s"></span> ${fieldValue(bean: categoryInstance, field: "name")}
							<input id="order" name="order" type="hidden"
							value="${categoryInstance.id}" />
						</li>
					</g:each>
				</ul>
				&nbsp;
			</div>
			<fieldset class="buttons">
				<g:actionSubmit class="save" action="saveOrder"
					value="${message(code: 'default.button.update.label', default: 'Update')}" />
			</fieldset>
		</form>
	</div>
	<g:javascript>
		     $( "#sortable" ).sortable({ axis: "y", containment: "#categories", scroll: false });
			 $( "#sortable" ).disableSelection();
    </g:javascript>
</body>
</html>
