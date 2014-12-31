
<%@ page import="com.bimWarehouse.FamilyFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'familyFile.label', default: 'FamilyFile')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-familyFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-familyFile" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list familyFile">
			
				<g:if test="${familyFileInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="familyFile.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${familyFileInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyFileInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="familyFile.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${familyFileInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyFileInstance?.classification}">
				<li class="fieldcontain">
					<span id="classification-label" class="property-label"><g:message code="familyFile.classification.label" default="Classification" /></span>
					
						<span class="property-value" aria-labelledby="classification-label"><g:fieldValue bean="${familyFileInstance}" field="classification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${familyFileInstance?.familyTypes}">
				<li class="fieldcontain">
					<span id="familyTypes-label" class="property-label"><g:message code="familyFile.familyTypes.label" default="Family Types" /></span>
					
						<g:each in="${familyFileInstance.familyTypes}" var="f">
						<span class="property-value" aria-labelledby="familyTypes-label"><g:link controller="familyType" action="show" id="${f.id}">${f?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:familyFileInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${familyFileInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
