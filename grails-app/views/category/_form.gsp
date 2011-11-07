<%@ page import="com.mathin.recipes.Category" %>



<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="category.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${categoryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categoryInstance, field: 'rank', 'error')} required">
	<label for="rank">
		<g:message code="category.rank.label" default="Rank" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="rank" required="" value="${fieldValue(bean: categoryInstance, field: 'rank')}"/>
</div>

