<%@ page import="com.mathin.recipes.SubCategory"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'subCategory.label', default: 'SubCategory')}" />
<title><g:message code="default.order.label" args="[entityName]" /></title>

<g:javascript library="jquery" />
<r:require module="jquery-ui" />
<r:require module="jqueryuitheme" />
<g:javascript library="touchPunch" />
</head>
<body>
	<a href="#list-subCategory" class="skip" tabindex="-1"><g:message
			code="default.link.skip.label" default="Skip to content&hellip;" /></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message
						code="default.home.label" /></a></li>
			<li><a class="home" href="${createLink(uri: '/management')}">Manage Display</a></li>
			<li><g:link class="list" action="list" controller="category">
					<g:message code="default.list.label" args="['Category']" />
				</g:link></li>
			<li><g:link class="list" action="list">
					<g:message code="default.list.label" args="[entityName]" />
				</g:link></li>
			<li><g:link class="create" action="create">
					<g:message code="default.new.label" args="[entityName]" />
				</g:link></li>
		</ul>
	</div>
	<div id="list-subCategory" class="content scaffold-list" role="main">
		<h1>
			<g:message code="default.order.label" args="[entityName]" /> for ${subCategoryInstanceList[0].category.name }
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>

		<form method="POST" action="saveOrder">		
			<div id="sortableDiv" class="center">
				&nbsp;
				<ul id="sortable" class="rankings">
					<g:each in="${subCategoryInstanceList}" status="i"
						var="subCategoryInstance">
						<li id="item_${subCategoryInstance.id}" class="ui-state-default">
							<span class="ui-icon ui-icon-arrowthick-2-n-s"></span> ${fieldValue(bean: subCategoryInstance, field: "name")}
							<input id="order" name="order" type="hidden"
							value="${subCategoryInstance.id}" />
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
		     $( "#sortable" ).sortable({ axis: "y", containment: "#sortableDiv", scroll: false });
			 $( "#sortable" ).disableSelection();
    </g:javascript>
</body>
</html>
