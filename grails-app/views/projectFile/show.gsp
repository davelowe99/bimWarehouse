
<%@ page import="com.bimWarehouse.ProjectFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projectFile.label', default: 'ProjectFile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-projectFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-projectFile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list projectFile">
			
				<g:if test="${projectFileInstance?.projectFileType}">
				<li class="fieldcontain">
					<span id="projectFileType-label" class="property-label"><g:message code="projectFile.projectFileType.label" default="Project File Type" /></span>
					
						<span class="property-value" aria-labelledby="projectFileType-label"><g:fieldValue bean="${projectFileInstance}" field="projectFileType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectFileInstance?.centralModelPath}">
				<li class="fieldcontain">
					<span id="centralModelPath-label" class="property-label"><g:message code="projectFile.centralModelPath.label" default="Central Model Path" /></span>
					
						<span class="property-value" aria-labelledby="centralModelPath-label"><g:fieldValue bean="${projectFileInstance}" field="centralModelPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectFileInstance?.centralModelIdentity}">
				<li class="fieldcontain">
					<span id="centralModelIdentity-label" class="property-label"><g:message code="projectFile.centralModelIdentity.label" default="Central Model Identity" /></span>
					
						<span class="property-value" aria-labelledby="centralModelIdentity-label"><g:fieldValue bean="${projectFileInstance}" field="centralModelIdentity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectFileInstance?.openWorksetDefault}">
				<li class="fieldcontain">
					<span id="openWorksetDefault-label" class="property-label"><g:message code="projectFile.openWorksetDefault.label" default="Open Workset Default" /></span>
					
						<span class="property-value" aria-labelledby="openWorksetDefault-label"><g:fieldValue bean="${projectFileInstance}" field="openWorksetDefault"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectFileInstance?.projectSparkFile}">
				<li class="fieldcontain">
					<span id="projectSparkFile-label" class="property-label"><g:message code="projectFile.projectSparkFile.label" default="Project Spark File" /></span>
					
						<span class="property-value" aria-labelledby="projectSparkFile-label"><g:fieldValue bean="${projectFileInstance}" field="projectSparkFile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectFileInstance?.xRefs}">
				<li class="fieldcontain">
					<span id="xRefs-label" class="property-label"><g:message code="projectFile.xRefs.label" default="X Refs" /></span>
					
						<g:each in="${projectFileInstance.xRefs}" var="x">
						<span class="property-value" aria-labelledby="xRefs-label"><g:link controller="XRef" action="show" id="${x.id}">${x?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:projectFileInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${projectFileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
