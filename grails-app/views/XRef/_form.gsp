<%@ page import="com.bimWarehouse.XRef" %>



<div class="fieldcontain ${hasErrors(bean: XRefInstance, field: 'fileType', 'error')} required">
	<label for="fileType">
		<g:message code="XRef.fileType.label" default="File Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fileType" maxlength="25" required="" value="${XRefInstance?.fileType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: XRefInstance, field: 'fileName', 'error')} required">
	<label for="fileName">
		<g:message code="XRef.fileName.label" default="File Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="fileName" cols="40" rows="5" maxlength="255" required="" value="${XRefInstance?.fileName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: XRefInstance, field: 'fileNameAndPath', 'error')} required">
	<label for="fileNameAndPath">
		<g:message code="XRef.fileNameAndPath.label" default="File Name And Path" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="fileNameAndPath" cols="40" rows="5" maxlength="255" required="" value="${XRefInstance?.fileNameAndPath}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: XRefInstance, field: 'pathType', 'error')} required">
	<label for="pathType">
		<g:message code="XRef.pathType.label" default="Path Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pathType" maxlength="50" required="" value="${XRefInstance?.pathType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: XRefInstance, field: 'loadState', 'error')} required">
	<label for="loadState">
		<g:message code="XRef.loadState.label" default="Load State" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loadState" maxlength="20" required="" value="${XRefInstance?.loadState}"/>

</div>

