<%@ page contentType="text/html;charset=ISO-8859-1"%>
<%@ page import="com.mathin.recipes.Recipe"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="layout" content="main" />
<title>Recipe Search</title>
<g:javascript library="jquery" />
</head>
<body>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message
            code="default.home.label" /></a></li>
      <li><g:link class="create" action="create" controller="recipe">
          <g:message code="default.new.label" args="['Recipe']" />
        </g:link></li>
    </ul>
  </div>
  <div>
    <br />
    <div id="searchbox" class="indent">
      <h2>
        Search for:
        <g:remoteField name="search"
          paramName="searchValue" update="searchResults" controller="recipe" action="search" />
      </h2>
    </div>
  </div>
  <g:render template="/recipe/searchResults" />
</body>
</html>