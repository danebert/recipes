
<%@ page import="com.mathin.recipes.Recipe"%>
<!doctype html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName" value="${message(code: 'recipe.label', default: 'Recipe')}" />
<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
  <a href="#show-recipe" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
      default="Skip to content&hellip;" /></a>
  <div class="nav" role="navigation">
    <ul>
      <li><a class="home" href="${createLink(uri: '/')}"><g:message
            code="default.home.label" /></a></li>
      <li><g:link class="list" action="list">
          <g:message code="default.list.label" args="[entityName]" />
        </g:link></li>
      <li><g:link class="create" action="create">
          <g:message code="default.new.label" args="[entityName]" />
        </g:link></li>
    </ul>
  </div>
  <div id="show-recipe" class="content scaffold-show" role="main">
    <h1 class="center">
      <g:fieldValue bean="${recipeInstance}" field="title" />
    </h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">
        ${flash.message}
      </div>
    </g:if>
    <table class="center narrow recipeBody">
      <tr>
        <td>
          <div class="recipeBody">
            <g:addLineBreaks><g:fieldValue bean="${recipeInstance}" field="body" /></g:addLineBreaks>
          </div>

        </td>
      </tr>
    </table>
    <div class="category center">
      <g:link controller="category" action="show" id="${recipeInstance?.category?.id}">
        ${recipeInstance?.category?.name}
      </g:link> : 
    <g:if test="${recipeInstance?.subCategory}">
        <g:link controller="subCategory" action="show" id="${recipeInstance?.subCategory?.id}">
          ${recipeInstance?.subCategory?.name}
        </g:link>
    </g:if>
    </div>

    <div class="dateCreated center">
      Added on <g:formatDate format="yyyy-MM-dd" date="${recipeInstance?.dateCreated}" />
    </div>

    <g:form>
      <fieldset class="buttons">
        <g:hiddenField name="id" value="${recipeInstance?.id}" />
        <g:link class="edit" action="edit" id="${recipeInstance?.id}">
          <g:message code="default.button.edit.label" default="Edit" />
        </g:link>
        <g:actionSubmit class="delete" action="delete"
          value="${message(code: 'default.button.delete.label', default: 'Delete')}"
          onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
      </fieldset>
    </g:form>
  </div>
</body>
</html>
