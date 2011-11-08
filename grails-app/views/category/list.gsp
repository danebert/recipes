
<%@ page import="com.mathin.recipes.Category"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
  <a href="#list-category" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
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
  <div id="list-category" class="content scaffold-list" role="main">
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
            title="${message(code: 'category.name.label', default: 'Name')}" />

          <g:sortableColumn property="rank"
            title="${message(code: 'category.rank.label', default: 'Rank')}" />
          <th>SubCategories</th>
        </tr>
      </thead>
      <tbody>
        <g:each in="${categoryInstanceList}" status="i" var="categoryInstance">
          <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${categoryInstance.id}">
                ${fieldValue(bean: categoryInstance, field: "name")}
              </g:link></td>

            <td>
              ${fieldValue(bean: categoryInstance, field: "rank")}
            </td>
            <td><g:each in="${categoryInstance.subCategories}" var="subCategoryInstance">
                <g:link controller="subCategory" action="show" id="${subCategoryInstance.id}">
                  ${fieldValue(bean: subCategoryInstance, field: "name")}
                </g:link>
                <br />
              </g:each></td>
          </tr>
        </g:each>
      </tbody>
    </table>
    <div class="pagination">
      <g:paginate total="${categoryInstanceTotal}" />
    </div>
  </div>
</body>
</html>
