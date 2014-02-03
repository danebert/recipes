<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<title>Recipes</title>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
</head>
<body>
	<div class="indent">
		<h1>
			<ul type="none">
				<li><g:link class="list" action="list" controller="category">
						<g:message code="default.list.label" args="['Category']" />
					</g:link></li>
				<li><g:link class="list" action="list" controller="subCategory">
						<g:message code="default.list.label" args="['SubCategory']" />
					</g:link></li>
				<li><g:link class="list" action="order" controller="category">
						Change Category Display Order
					</g:link></li>
			</ul>
		</h1>
	</div>
</body>
</html>
