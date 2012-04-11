<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<title>Recipes</title>
</head>
<body>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message
            code="default.home.label" /></a></li>
      <li><a class="search" href="${createLink(uri: '/search')}"><g:message
            code="default.search.label" /></a></li>
      <li><g:link class="create" action="create" controller="recipe">
          <g:message code="default.new.label" args="['Recipe']" />
        </g:link></li>
    </ul>
  </div>
  <br />
  <div class="narrow blockcenter" id="users">
    <g:each in="${users}" var="user">
      <h2 class="nav center">
        <a href="/recipes/recipe/list?user=${user.username}">${user.displayName}'s recipes
        </a>
      </h2>
      <br />
    </g:each>
  </div>
  <div class="center small floatRight">
    <a href="/recipes/management">Manage Recipes</a>
  </div>
  <br />
</body>
</html>
