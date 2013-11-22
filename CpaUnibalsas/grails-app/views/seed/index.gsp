
<%@ page import="br.edu.unibalsas.siscpa.Seed" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'seed.label', default: 'Seed')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-seed" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-seed" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="atual" title="${message(code: 'seed.atual.label', default: 'Atual')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${seedInstanceList}" status="i" var="seedInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${seedInstance.id}">${fieldValue(bean: seedInstance, field: "atual")}</g:link></td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${seedInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
