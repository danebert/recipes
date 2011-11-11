
<%@ page import="com.mathin.recipes.Recipe"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>

<script type="text/javascript">
function switchMenu(obj) {
  var el = document.getElementById(obj);
  if ( el.style.display != "none" ) {
    el.style.display = 'none';
  }
  else {
    el.style.display = '';
  }
}
</script>

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
    <h1>Recipes</h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">
        ${flash.message}
      </div>
    </g:if>
    <div class="indent">
      <g:each in="${categoryInstanceList}" var="categoryInstance">
        <h2>
          <a href="#" onclick="switchMenu('cat_${categoryInstance.id}');"> ${fieldValue(bean: categoryInstance, field: "name")}
          </a>
        </h2>
        <div id="cat_${categoryInstance.id}" style="display: none" class="indent">
          <h3>
            <a href="#" onclick="switchMenu('nosub_${categoryInstance.id}');">Uncategorized</a>
          </h3>
          <div id="nosub_${categoryInstance.id}" style="display: none">
            <table>
              <g:each in="${categoryInstance.recipes}" status="ri" var="recipeInstance">
                <g:if test="${!recipeInstance.subCategory}">
                  <tr class="${(ri % 2) == 0 ? 'even' : 'odd'}">
                    <td><g:link action="show" id="${recipeInstance.id}">
                        ${fieldValue(bean: recipeInstance, field: "title")}
                      </g:link></td>
                  </tr>
                </g:if>
              </g:each>
            </table>
          </div>
          <g:each in="${categoryInstance.subCategories}" var="subCategoryInstance">
            <h3>
              <a href="#" onclick="switchMenu('sub_${subCategoryInstance.id}');"> ${fieldValue(bean: subCategoryInstance, field: "name")}
              </a>
            </h3>
            <div id="sub_${subCategoryInstance.id}" style="display: none">
              <table>
                <g:each in="${subCategoryInstance.recipes}" status="ri" var="recipeInstance">
                  <tr class="${(ri % 2) == 0 ? 'even' : 'odd'}">
                    <td><g:link action="show" id="${recipeInstance.id}">
                        ${fieldValue(bean: recipeInstance, field: "title")}
                      </g:link></td>
                  </tr>
                </g:each>
              </table>
            </div>
          </g:each>
        </div>
      </g:each>
    </div>

    <div class="pagination">
      <g:paginate total="${recipeInstanceTotal}" />
    </div>
  </div>
</body>
</html>
