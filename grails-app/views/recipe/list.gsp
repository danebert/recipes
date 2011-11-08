
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
      <li><g:link class="create" action="create">
          <g:message code="default.new.label" args="[entityName]" />
        </g:link></li>
    </ul>
  </div>
  <div id="list-recipe" class="content scaffold-list" role="main">
    <h1>
      <g:message code="default.list.label" args="[entityName]" />
    </h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">
        ${flash.message}
      </div>
    </g:if>
    <table>
      <tbody>
        <g:each in="${categoryInstanceList}" status="ci" var="categoryInstance">
          <tr>
            <td>
              ${fieldValue(bean: categoryInstance, field: "name")}
            </td>
            <td><g:each in="${categoryInstance.subCategories}" status="sci"
                var="subCategoryInstance">
                <table>
                  <tr>
                    <td>
                      ${fieldValue(bean: subCategoryInstance, field: "name")}
                    </td>
                  </tr>
                  <g:each in="${subCategoryInstance.recipes}" status="ri" var="recipeInstance">
                    <tr class="${(ri % 2) == 0 ? 'even' : 'odd'}">
                      <td><g:link action="show" id="${recipeInstance.id}">
                          ${fieldValue(bean: recipeInstance, field: "title")}
                        </g:link></td>
                    </tr>
                  </g:each>
                </table>
              </g:each></td>
        </g:each>
        </tr>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${recipeInstanceTotal}" />
    </div>
  </div>
</body>
</html>
