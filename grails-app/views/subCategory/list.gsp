
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
      <li><a class="home" href="${createLink(uri: '/management')}">Manage Display</a></li>
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
          <th>Category</th>
          <th>Sub Category</th>
          <th>Rank</th>
          <th>Owner</th>
        </tr>
      </thead>
      <tbody>
        <g:each in="${subCategoryInstanceList}" status="i" var="subCategoryInstance">
          <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td>
              ${fieldValue(bean: subCategoryInstance, field: "category.name")}
            </td>

            <td><g:link action="show" id="${subCategoryInstance.id}">
                ${fieldValue(bean: subCategoryInstance, field: "name")}
              </g:link></td>

            <td>
              ${fieldValue(bean: subCategoryInstance, field: "rank")}
            </td>
            
            <td>
              ${fieldValue(bean: subCategoryInstance, field: "owner.username")}
            </td>
            
          </tr>
        </g:each>
      </tbody>
    </table>
  </div>
</body>
</html>
