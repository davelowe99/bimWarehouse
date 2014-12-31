
<%@ page import="com.bimWarehouse.XRef" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'XRef.label', default: 'XRef')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-XRef" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-XRef" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list XRef">
			
				<g:if test="${XRefInstance?.fileType}">
				<li class="fieldcontain">
					<span id="fileType-label" class="property-label"><g:message code="XRef.fileType.label" default="File Type" /></span>
					
						<span class="property-value" aria-labelledby="fileType-label"><g:fieldValue bean="${XRefInstance}" field="fileType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${XRefInstance?.fileName}">
				<li class="fieldcontain">
					<span id="fileName-label" class="property-label"><g:message code="XRef.fileName.label" default="File Name" /></span>
					
						<span class="property-value" aria-labelledby="fileName-label"><g:fieldValue bean="${XRefInstance}" field="fileName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${XRefInstance?.fileNameAndPath}">
				<li class="fieldcontain">
					<span id="fileNameAndPath-label" class="property-label"><g:message code="XRef.fileNameAndPath.label" default="File Name And Path" /></span>
					
						<span class="property-value" aria-labelledby="fileNameAndPath-label"><g:fieldValue bean="${XRefInstance}" field="fileNameAndPath"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${XRefInstance?.pathType}">
				<li class="fieldcontain">
					<span id="pathType-label" class="property-label"><g:message code="XRef.pathType.label" default="Path Type" /></span>
					
						<span class="property-value" aria-labelledby="pathType-label"><g:fieldValue bean="${XRefInstance}" field="pathType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${XRefInstance?.loadState}">
				<li class="fieldcontain">
					<span id="loadState-label" class="property-label"><g:message code="XRef.loadState.label" default="Load State" /></span>
					
						<span class="property-value" aria-labelledby="loadState-label"><g:fieldValue bean="${XRefInstance}" field="loadState"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${XRefInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="XRef.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${XRefInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${XRefInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="XRef.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${XRefInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:XRefInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${XRefInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
