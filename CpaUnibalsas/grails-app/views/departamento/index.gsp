
<%@ page import="br.edu.unibalsas.siscpa.Departamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'departamento.label', default: 'Departamento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-departamento" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-departamento" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="descricao" title="${message(code: 'departamento.descricao.label', default: 'Descricao')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${departamentoInstanceList}" status="i" var="departamentoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${departamentoInstance.id}">${fieldValue(bean: departamentoInstance, field: "descricao")}</g:link></td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${departamentoInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
