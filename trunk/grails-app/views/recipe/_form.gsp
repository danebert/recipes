<%@ page import="com.mathin.recipes.Recipe"%>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'title', 'error')} required">
  <label for="title"> <g:message code="recipe.title.label" default="Title" /> <span
    class="required-indicator">*</span>
  </label>
  <g:textField name="title" required="" value="${recipeInstance?.title}" />
</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'body', 'error')} required">
  <label for="body"> <g:message code="recipe.body.label" default="Body" /> <span
    class="required-indicator">*</span>
  </label>
  <g:textArea name="body" required="" value="${recipeInstance?.body}" rows="50" columns="80"/>
</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'category', 'error')} required">
  <label for="category"> <g:message code="recipe.category.label" default="Category" /> <span
    class="required-indicator">*</span>
  </label>
  <g:select id="category" name="category.id" from="${com.mathin.recipes.Category.list()}"
    optionKey="id" optionValue="name" required="" value="${recipeInstance?.category?.id}"
    class="many-to-one" />
</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'subCategory', 'error')} ">
  <label for="subCategory"> <g:message code="recipe.subCategory.label"
      default="Sub Category" /> 
  </label>
  <g:select id="subCategory" name="subCategory.id" from="${com.mathin.recipes.SubCategory.list()}"
    optionKey="id" optionValue="name" required="false" value="${recipeInstance?.subCategory?.id}" noSelection="${['null':'None'] }"
    class="many-to-one" />
</div>


