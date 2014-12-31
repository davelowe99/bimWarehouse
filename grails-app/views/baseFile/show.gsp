
<%@ page import="com.bimWarehouse.BaseFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'baseFile.label', default: 'BaseFile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-baseFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-baseFile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list baseFile">
			
				<g:if test="${baseFileInstance?.fileName}">
				<li class="fieldcontain">
					<span id="fileName-label" class="property-label"><g:message code="baseFile.fileName.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${baseFileInstance}" field="fileName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.fileImage}">
				<li class="fieldcontain">
					<span id="fileImage-label" class="property-label"><g:message code="baseFile.fileImage.label" default="File Image" /></span>
					
						<span class="property-value" aria-labelledby="fileImage-label"><g:fieldValue bean="${baseFileInstance}" field="fileImage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.docType}">
				<li class="fieldcontain">
					<span id="docType-label" class="property-label"><g:message code="baseFile.docType.label" default="Doc Type" /></span>
					
						<span class="property-value" aria-labelledby="docType-label"><g:fieldValue bean="${baseFileInstance}" field="docType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="baseFile.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${baseFileInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.build}">
				<li class="fieldcontain">
					<span id="build-label" class="property-label"><g:message code="baseFile.build.label" default="Build" /></span>
					
						<span class="property-value" aria-labelledby="build-label"><g:fieldValue bean="${baseFileInstance}" field="build"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.product}">
				<li class="fieldcontain">
					<span id="product-label" class="property-label"><g:message code="baseFile.product.label" default="Product" /></span>
					
						<span class="property-value" aria-labelledby="product-label"><g:fieldValue bean="${baseFileInstance}" field="product"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.platform}">
				<li class="fieldcontain">
					<span id="platform-label" class="property-label"><g:message code="baseFile.platform.label" default="Platform" /></span>
					
						<span class="property-value" aria-labelledby="platform-label"><g:fieldValue bean="${baseFileInstance}" field="platform"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.buildTimeStamp}">
				<li class="fieldcontain">
					<span id="buildTimeStamp-label" class="property-label"><g:message code="baseFile.buildTimeStamp.label" default="Build Time Stamp" /></span>
					
						<span class="property-value" aria-labelledby="buildTimeStamp-label"><g:fieldValue bean="${baseFileInstance}" field="buildTimeStamp"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.lastSavedPath}">
				<li class="fieldcontain">
					<span id="lastSavedPath-label" class="property-label"><g:message code="baseFile.lastSavedPath.label" default="Last Saved Path" /></span>
					
						<span class="property-value" aria-labelledby="lastSavedPath-label"><g:fieldValue bean="${baseFileInstance}" field="lastSavedPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.locale}">
				<li class="fieldcontain">
					<span id="locale-label" class="property-label"><g:message code="baseFile.locale.label" default="Locale" /></span>
					
						<span class="property-value" aria-labelledby="locale-label"><g:fieldValue bean="${baseFileInstance}" field="locale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="baseFile.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${baseFileInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="baseFile.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${baseFileInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.fileSize}">
				<li class="fieldcontain">
					<span id="fileSize-label" class="property-label"><g:message code="baseFile.fileSize.label" default="File Size" /></span>
					
						<span class="property-value" aria-labelledby="fileSize-label"><g:fieldValue bean="${baseFileInstance}" field="fileSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${baseFileInstance?.snapshot}">
				<li class="fieldcontain">
					<span id="snapshot-label" class="property-label"><g:message code="baseFile.snapshot.label" default="Snapshot" /></span>
					
						<span class="property-value" aria-labelledby="snapshot-label"><g:link controller="snapshot" action="show" id="${baseFileInstance?.snapshot?.id}">${baseFileInstance?.snapshot?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:baseFileInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${baseFileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
