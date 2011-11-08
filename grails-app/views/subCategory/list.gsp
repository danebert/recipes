
<%@ page import="com.mathin.recipes.SubCategory"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'subCategory.label', default: 'SubCategory')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
  <a href="#list-subCategory" class="skip" tabindex="-1"><g:message
      code="default.link.skip.label" default="Skip to content&hellip;" /></a>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message
            code="default.home.label" /></a></li>
      <li><g:link class="create" action="create">
          <g:message code="default.new.label" args="[entityName]" />
        </g:link></li>
    </ul>
  </div>
  <div id="list-subCategory" class="content scaffold-list" role="main">
    <h1>
      <g:message code="default.list.label" args="[entityName]" />
    </h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">
        ${flash.message}
      </div>
    </g:if>
    <table>
      <thead>
        <tr>

          <g:sortableColumn property="name"
            title="${message(code: 'subCategory.name.label', default: 'Name')}" />

          <g:sortableColumn property="name"
            title="${message(code: 'subCategory.category.label', default: 'Category')}" />
            
          <th><g:message code="subCategory.rank.label" default="Rank" /></th>

        </tr>
      </thead>
      <tbody>
        <g:each in="${subCategoryInstanceList}" status="i" var="subCategoryInstance">
          <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${subCategoryInstance.id}">
                ${fieldValue(bean: subCategoryInstance, field: "name")}
              </g:link></td>

            <td>
              ${fieldValue(bean: subCategoryInstance, field: "category.name")}
            </td>

            <td>
              ${fieldValue(bean: subCategoryInstance, field: "rank")}
            </td>

          </tr>
        </g:each>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${subCategoryInstanceTotal}" />
    </div>
  </div>
</body>
</html>
