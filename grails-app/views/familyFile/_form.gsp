<%@ page import="com.bimWarehouse.FamilyFile" %>



<div class="fieldcontain ${hasErrors(bean: familyFileInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="familyFile.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="64" required="" value="${familyFileInstance?.title}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyFileInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="familyFile.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="category" maxlength="64" required="" value="${familyFileInstance?.category}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyFileInstance, field: 'classification', 'error')} required">
	<label for="classification">
		<g:message code="familyFile.classification.label" default="Classification" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="classification" maxlength="64" required="" value="${familyFileInstance?.classification}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyFileInstance, field: 'familyTypes', 'error')} ">
	<label for="familyTypes">
		<g:message code="familyFile.familyTypes.label" default="Family Types" />
		
	</label>
	<g:select name="familyTypes" from="${com.bimWarehouse.FamilyType.list()}" multiple="multiple" optionKey="id" size="5" value="${familyFileInstance?.familyTypes*.id}" class="many-to-many"/>

</div>

