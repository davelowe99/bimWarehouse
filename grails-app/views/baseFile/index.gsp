
<%@ page import="com.bimWarehouse.BaseFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'baseFile.label', default: 'BaseFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-baseFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-baseFile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fileName" title="${message(code: 'baseFile.fileName.label', default: 'File Name')}" />
					
						<g:sortableColumn property="fileImage" title="${message(code: 'baseFile.fileImage.label', default: 'File Image')}" />
					
						<g:sortableColumn property="docType" title="${message(code: 'baseFile.docType.label', default: 'Doc Type')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'baseFile.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="build" title="${message(code: 'baseFile.build.label', default: 'Build')}" />
					
						<g:sortableColumn property="product" title="${message(code: 'baseFile.product.label', default: 'Product')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${baseFileInstanceList}" status="i" var="baseFileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${baseFileInstance.id}">${fieldValue(bean: baseFileInstance, field: "fileName")}</g:link></td>
					
						<td>${fieldValue(bean: baseFileInstance, field: "fileImage")}</td>
					
						<td>${fieldValue(bean: baseFileInstance, field: "docType")}</td>
					
						<td>${fieldValue(bean: baseFileInstance, field: "username")}</td>
					
						<td>${fieldValue(bean: baseFileInstance, field: "build")}</td>
					
						<td>${fieldValue(bean: baseFileInstance, field: "product")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${baseFileInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
