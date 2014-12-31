<%@ page import="com.bimWarehouse.FamilyType" %>



<div class="fieldcontain ${hasErrors(bean: familyTypeInstance, field: 'parameters', 'error')} required">
	<label for="parameters">
		<g:message code="familyType.parameters.label" default="Parameters" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="parameters" cols="40" rows="5" maxlength="32768" required="" value="${familyTypeInstance?.parameters}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: familyTypeInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="familyType.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="64" required="" value="${familyTypeInstance?.title}"/>

</div>

