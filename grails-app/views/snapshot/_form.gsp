<%@ page import="com.bimWarehouse.Snapshot" %>



<div class="fieldcontain ${hasErrors(bean: snapshotInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="snapshot.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="64" required="" value="${snapshotInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: snapshotInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="snapshot.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" maxlength="64" required="" value="${snapshotInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: snapshotInstance, field: 'snapType', 'error')} required">
	<label for="snapType">
		<g:message code="snapshot.snapType.label" default="Snap Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="snapType" maxlength="20" required="" value="${snapshotInstance?.snapType}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: snapshotInstance, field: 'baseFiles', 'error')} ">
	<label for="baseFiles">
		<g:message code="snapshot.baseFiles.label" default="Base Files" />
		
	</label>
	<g:select name="baseFiles" from="${com.bimWarehouse.BaseFile.list()}" multiple="multiple" optionKey="id" size="5" value="${snapshotInstance?.baseFiles*.id}" class="many-to-many"/>

</div>

