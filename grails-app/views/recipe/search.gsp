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
  <div>
    <br />
    <div id="searchbox" class="indent">
      <h2>Search for:
      <g:remoteField name="search" oncomplete="showSpinner(false);" onloading="showSpinner(true);"
        paramName="searchValue" update="searchResults" controller="recipe" action="search" /></h2>
    </div>
  </div>
  <g:render template="/recipe/searchResults" />
</body>
</html>