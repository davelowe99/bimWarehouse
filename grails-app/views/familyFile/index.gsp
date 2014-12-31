
<%@ page import="com.bimWarehouse.FamilyFile" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'familyFile.label', default: 'FamilyFile')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-familyFile" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-familyFile" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'familyFile.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="category" title="${message(code: 'familyFile.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="classification" title="${message(code: 'familyFile.classification.label', default: 'Classification')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${familyFileInstanceList}" status="i" var="familyFileInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${familyFileInstance.id}">${fieldValue(bean: familyFileInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: familyFileInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: familyFileInstance, field: "classification")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${familyFileInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
