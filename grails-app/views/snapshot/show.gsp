
<%@ page import="com.bimWarehouse.Snapshot" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'snapshot.label', default: 'Snapshot')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-snapshot" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-snapshot" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list snapshot">
			
				<g:if test="${snapshotInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="snapshot.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${snapshotInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${snapshotInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="snapshot.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${snapshotInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${snapshotInstance?.snapType}">
				<li class="fieldcontain">
					<span id="snapType-label" class="property-label"><g:message code="snapshot.snapType.label" default="Snap Type" /></span>
					
						<span class="property-value" aria-labelledby="snapType-label"><g:fieldValue bean="${snapshotInstance}" field="snapType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${snapshotInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="snapshot.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${snapshotInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${snapshotInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="snapshot.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${snapshotInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${snapshotInstance?.baseFiles}">
				<li class="fieldcontain">
					<span id="baseFiles-label" class="property-label"><g:message code="snapshot.baseFiles.label" default="Base Files" /></span>
					
						<g:each in="${snapshotInstance.baseFiles}" var="b">
						<span class="property-value" aria-labelledby="baseFiles-label"><g:link controller="baseFile" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:snapshotInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${snapshotInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
