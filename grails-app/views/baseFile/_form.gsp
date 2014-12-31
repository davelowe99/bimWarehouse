<%@ page import="com.bimWarehouse.BaseFile" %>



<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'fileName', 'error')} required">
	<label for="fileName">
		<g:message code="baseFile.fileName.label" default="File Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="fileName" cols="40" rows="5" maxlength="255" required="" value="${baseFileInstance?.fileName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'fileImage', 'error')} ">
	<label for="fileImage">
		<g:message code="baseFile.fileImage.label" default="File Image" />
		
	</label>
	<g:textArea name="fileImage" cols="40" rows="5" maxlength="32768" value="${baseFileInstance?.fileImage}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'docType', 'error')} required">
	<label for="docType">
		<g:message code="baseFile.docType.label" default="Doc Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="docType" maxlength="50" required="" value="${baseFileInstance?.docType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="baseFile.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="64" required="" value="${baseFileInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'build', 'error')} required">
	<label for="build">
		<g:message code="baseFile.build.label" default="Build" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="build" maxlength="64" required="" value="${baseFileInstance?.build}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'product', 'error')} required">
	<label for="product">
		<g:message code="baseFile.product.label" default="Product" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="product" maxlength="50" required="" value="${baseFileInstance?.product}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'platform', 'error')} required">
	<label for="platform">
		<g:message code="baseFile.platform.label" default="Platform" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="platform" maxlength="10" required="" value="${baseFileInstance?.platform}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'buildTimeStamp', 'error')} required">
	<label for="buildTimeStamp">
		<g:message code="baseFile.buildTimeStamp.label" default="Build Time Stamp" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="buildTimeStamp" maxlength="15" required="" value="${baseFileInstance?.buildTimeStamp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'lastSavedPath', 'error')} required">
	<label for="lastSavedPath">
		<g:message code="baseFile.lastSavedPath.label" default="Last Saved Path" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="lastSavedPath" cols="40" rows="5" maxlength="255" required="" value="${baseFileInstance?.lastSavedPath}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'locale', 'error')} required">
	<label for="locale">
		<g:message code="baseFile.locale.label" default="Locale" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="locale" maxlength="3" required="" value="${baseFileInstance?.locale}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'fileSize', 'error')} required">
	<label for="fileSize">
		<g:message code="baseFile.fileSize.label" default="File Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fileSize" value="${fieldValue(bean: baseFileInstance, field: 'fileSize')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: baseFileInstance, field: 'snapshot', 'error')} required">
	<label for="snapshot">
		<g:message code="baseFile.snapshot.label" default="Snapshot" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="snapshot" name="snapshot.id" from="${com.bimWarehouse.Snapshot.list()}" optionKey="id" required="" value="${baseFileInstance?.snapshot?.id}" class="many-to-one"/>

</div>

