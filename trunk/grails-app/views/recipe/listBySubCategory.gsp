
<%@ page import="com.mathin.recipes.Recipe"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
  <a href="#list-recipe" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
      default="Skip to content&hellip;" /></a>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message
            code="default.home.label" /></a></li>
      <li><a class="search" href="${createLink(uri: '/search')}"><g:message
            code="default.search.label" /></a></li>
      <li><g:link controller="recipe" class="list" action="list"
          params="[user: subCategoryInstance.owner.username]">
          <g:message code="default.list.label" args="[entityName]" />
        </g:link></li>
      <li><g:link class="create" action="create">
          <g:message code="default.new.label" args="[entityName]" />
        </g:link></li>
    </ul>
  </div>
  <br />
  <div id="list-recipe" class="content scaffold-list indent" role="main">
    <h2>
      ${subCategoryInstance.category.name}
      :
      ${subCategoryInstance.name}
    </h2>
    <g:if test="${flash.message}">
      <div class="message" role="status">
        ${flash.message}
      </div>
    </g:if>
    <div class="indent">

      <h3>
        ${fieldValue(bean: c, field: "name")}
      </h3>
      <div id="sub_${subCategoryInstance.id}">
        <table>
          <g:each in="${subCategoryInstance.recipes}" status="ri" var="recipeInstance">
            <tr class="${(ri % 2) == 0 ? 'even' : 'odd'}">
              <td><g:link controller="recipe" action="show" id="${recipeInstance.id}">
                  ${fieldValue(bean: recipeInstance, field: "title")}
                </g:link></td>
            </tr>
          </g:each>
        </table>
      </div>
    </div>

    <div class="pagination">
      <g:paginate total="${recipeInstanceTotal}" />
    </div>
  </div>
</body>
</html>
