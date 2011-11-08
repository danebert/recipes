
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
    <h1>
      <g:message code="default.show.label" args="[entityName]" />
    </h1>
    <g:if test="${flash.message}">
      <div class="message" role="status">
        ${flash.message}
      </div>
    </g:if>
    <ol class="property-list recipe">

      <g:if test="${recipeInstance?.title}">
        <li class="fieldcontain"><span id="title-label" class="property-label"><g:message
              code="recipe.title.label" default="Title" /></span> <span class="property-value"
          aria-labelledby="title-label"><g:fieldValue bean="${recipeInstance}" field="title" /></span>

        </li>
      </g:if>

      <g:if test="${recipeInstance?.body}">
        <li class="fieldcontain"><span id="body-label" class="property-label"><g:message
              code="recipe.body.label" default="Body" /></span> <span class="property-value"
          aria-labelledby="body-label"><g:fieldValue bean="${recipeInstance}" field="body" /></span>

        </li>
      </g:if>

      <g:if test="${recipeInstance?.category}">
        <li class="fieldcontain"><span id="category-label" class="property-label"><g:message
              code="recipe.category.label" default="Category" /></span> <span class="property-value"
          aria-labelledby="category-label"><g:link controller="category" action="show"
              id="${recipeInstance?.category?.id}">
              ${recipeInstance?.category?.name}
            </g:link></span></li>
      </g:if>


      <g:if test="${recipeInstance?.subCategory}">
        <li class="fieldcontain"><span id="subCategory-label" class="property-label"><g:message
              code="recipe.subCategory.label" default="Sub Category" /></span> <span
          class="property-value" aria-labelledby="subCategory-label"><g:link
              controller="subCategory" action="show" id="${recipeInstance?.subCategory?.id}">
              ${recipeInstance?.subCategory?.name}
            </g:link></span></li>
      </g:if>

      <g:if test="${recipeInstance?.dateCreated}">
        <li class="fieldcontain"><span id="dateCreated-label" class="property-label"><g:message
              code="recipe.dateCreated.label" default="Created Date" /></span> <span
          class="property-value" aria-labelledby="dateCreated-label"><g:formatDate
              date="${recipeInstance?.dateCreated}" /></span></li>
      </g:if>
    </ol>
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
