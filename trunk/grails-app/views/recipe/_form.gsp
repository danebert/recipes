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
  <g:textArea name="body" required="" value="${recipeInstance?.body}" />
</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'category', 'error')} required">
  <label for="category"> <g:message code="recipe.category.label" default="Category" /> <span
    class="required-indicator">*</span>
  </label>
  <g:select id="category" name="category.id" from="${com.mathin.recipes.Category.list()}"
    optionKey="id" optionValue="name" required="" value="${recipeInstance?.category?.id}"
    class="many-to-one" />
</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'subCategory', 'error')} required">
  <label for="subCategory"> <g:message code="recipe.subCategory.label"
      default="Sub Category" /> <span class="required-indicator">*</span>
  </label>
  <g:select id="subCategory" name="subCategory.id" from="${com.mathin.recipes.SubCategory.list()}"
    optionKey="id" optionValue="name" required="" value="${recipeInstance?.subCategory?.id}"
    class="many-to-one" />
</div>

<div class="fieldcontain ${hasErrors(bean: recipeInstance, field: 'dateCreated', 'error')} required">
  <label for="dateCreated"> <g:message code="recipe.dateCreated.label"
      default="Created Date" /> <span class="required-indicator">*</span>
  </label>
  <g:datePicker name="dateCreated" precision="day" value="${recipeInstance?.dateCreated}" />
</div>


