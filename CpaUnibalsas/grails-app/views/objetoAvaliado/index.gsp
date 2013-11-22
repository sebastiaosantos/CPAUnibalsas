
<%@ page import="br.edu.unibalsas.siscpa.ObjetoAvaliado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'objetoAvaliado.label', default: 'ObjetoAvaliado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-objetoAvaliado" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-objetoAvaliado" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'objetoAvaliado.nome.label', default: 'Nome')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${objetoAvaliadoInstanceList}" status="i" var="objetoAvaliadoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${objetoAvaliadoInstance.id}">${fieldValue(bean: objetoAvaliadoInstance, field: "nome")}</g:link></td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${objetoAvaliadoInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
