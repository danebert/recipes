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
<script type="text/javascript">
$( document ).ready(function() {      
 
    var searchbox = document.getElementById("searchbox");
    var searchboxMobile = document.getElementById("searchboxMobile");
    
    if ( (/iPhone|iPod|iPad|Android|BlackBerry/).test(navigator.userAgent) ) {
    	searchbox.style.display = 'none';
    	searchboxMobile.style.display = '';
    }
    else {
    	searchbox.style.display = '';
    	searchboxMobile.style.display = 'none';
    }
});
</script>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message
            code="default.home.label" /></a></li>
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
    
    <div id="searchboxMobile" class="indent">
      <h2>
        Search for:
        <g:formRemote name="searchForm" url="[action:'search',controller:'recipe']" update="searchResults">
        <g:textField name="searchValue" /><br />
          <g:submitToRemote url="[action:'search',controller:'recipe']" value="Search" update="searchResults"/>
        </g:formRemote	>
      </h2>
    </div>
  </div>
  <g:render template="/recipe/searchResults" />
</body>
</html>