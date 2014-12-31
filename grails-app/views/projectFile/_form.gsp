<%@ page import="com.bimWarehouse.ProjectFile" %>



<div class="fieldcontain ${hasErrors(bean: projectFileInstance, field: 'projectFileType', 'error')} required">
	<label for="projectFileType">
		<g:message code="projectFile.projectFileType.label" default="Project File Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="projectFileType" maxlength="15" required="" value="${projectFileInstance?.projectFileType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectFileInstance, field: 'centralModelPath', 'error')} required">
	<label for="centralModelPath">
		<g:message code="projectFile.centralModelPath.label" default="Central Model Path" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="centralModelPath" cols="40" rows="5" maxlength="255" required="" value="${projectFileInstance?.centralModelPath}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectFileInstance, field: 'centralModelIdentity', 'error')} required">
	<label for="centralModelIdentity">
		<g:message code="projectFile.centralModelIdentity.label" default="Central Model Identity" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="centralModelIdentity" maxlength="38" required="" value="${projectFileInstance?.centralModelIdentity}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectFileInstance, field: 'openWorksetDefault', 'error')} required">
	<label for="openWorksetDefault">
		<g:message code="projectFile.openWorksetDefault.label" default="Open Workset Default" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="openWorksetDefault" maxlength="3" required="" value="${projectFileInstance?.openWorksetDefault}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectFileInstance, field: 'projectSparkFile', 'error')} required">
	<label for="projectSparkFile">
		<g:message code="projectFile.projectSparkFile.label" default="Project Spark File" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="projectSparkFile" maxlength="3" required="" value="${projectFileInstance?.projectSparkFile}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: projectFileInstance, field: 'xRefs', 'error')} ">
	<label for="xRefs">
		<g:message code="projectFile.xRefs.label" default="X Refs" />
		
	</label>
	<g:select name="xRefs" from="${com.bimWarehouse.XRef.list()}" multiple="multiple" optionKey="id" size="5" value="${projectFileInstance?.xRefs*.id}" class="many-to-many"/>

</div>

