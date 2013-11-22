
<%@ page import="br.edu.unibalsas.siscpa.SecUserSecRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'secUserSecRole.label', default: 'SecUserSecRole')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-secUserSecRole" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-secUserSecRole" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="secUserSecRole.secRole.label" default="Sec Role" /></th>
			
				<th><g:message code="secUserSecRole.secUser.label" default="Sec User" /></th>
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${secUserSecRoleInstanceList}" status="i" var="secUserSecRoleInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${secUserSecRoleInstance.id}">${fieldValue(bean: secUserSecRoleInstance, field: "secRole")}</g:link></td>
			
				<td>${fieldValue(bean: secUserSecRoleInstance, field: "secUser")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${secUserSecRoleInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
