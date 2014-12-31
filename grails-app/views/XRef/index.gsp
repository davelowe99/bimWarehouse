
<%@ page import="com.bimWarehouse.XRef" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'XRef.label', default: 'XRef')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-XRef" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-XRef" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="fileType" title="${message(code: 'XRef.fileType.label', default: 'File Type')}" />
					
						<g:sortableColumn property="fileName" title="${message(code: 'XRef.fileName.label', default: 'File Name')}" />
					
						<g:sortableColumn property="fileNameAndPath" title="${message(code: 'XRef.fileNameAndPath.label', default: 'File Name And Path')}" />
					
						<g:sortableColumn property="pathType" title="${message(code: 'XRef.pathType.label', default: 'Path Type')}" />
					
						<g:sortableColumn property="loadState" title="${message(code: 'XRef.loadState.label', default: 'Load State')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'XRef.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${XRefInstanceList}" status="i" var="XRefInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${XRefInstance.id}">${fieldValue(bean: XRefInstance, field: "fileType")}</g:link></td>
					
						<td>${fieldValue(bean: XRefInstance, field: "fileName")}</td>
					
						<td>${fieldValue(bean: XRefInstance, field: "fileNameAndPath")}</td>
					
						<td>${fieldValue(bean: XRefInstance, field: "pathType")}</td>
					
						<td>${fieldValue(bean: XRefInstance, field: "loadState")}</td>
					
						<td><g:formatDate date="${XRefInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${XRefInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
