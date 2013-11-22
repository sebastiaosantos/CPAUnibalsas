
<%@ page import="br.edu.unibalsas.siscpa.SecRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'secRole.label', default: 'SecRole')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-secRole" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-secRole" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="authority" title="${message(code: 'secRole.authority.label', default: 'Authority')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${secRoleInstanceList}" status="i" var="secRoleInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${secRoleInstance.id}">${fieldValue(bean: secRoleInstance, field: "authority")}</g:link></td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${secRoleInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
