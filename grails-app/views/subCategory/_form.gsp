<%@ page import="com.mathin.recipes.SubCategory"%>

<div class="fieldcontain ${hasErrors(bean: subCategoryInstance, field: 'name', 'error')} required">
  <label for="name"> <g:message code="subCategory.name.label" default="Name" /> <span
    class="required-indicator">*</span>
  </label>
  <g:textField name="name" required="" value="${subCategoryInstance?.name}" />
</div>

<div
  class="fieldcontain ${hasErrors(bean: subCategoryInstance, field: 'category', 'error')} required">
  <label for="category"> <g:message code="subCategory.category.label" default="Category" />
    <span class="required-indicator">*</span>
  </label>
  <g:select id="category" name="category.id" from="${categoryInstanceList}"
    optionKey="id" optionValue="name" required="" value="${subCategoryInstance?.category?.id}"
    class="many-to-one" />
</div>