
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoFuncionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoFuncionario.label', default: 'AvaliacaoFuncionario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-avaliacaoFuncionario" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-avaliacaoFuncionario" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="avaliacaoFuncionario.cpa.label" default="Cpa" /></th>
			
				<th><g:message code="avaliacaoFuncionario.departamento.label" default="Departamento" /></th>
			
				<g:sortableColumn property="tempo" title="${message(code: 'avaliacaoFuncionario.tempo.label', default: 'Tempo')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${avaliacaoFuncionarioInstanceList}" status="i" var="avaliacaoFuncionarioInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${avaliacaoFuncionarioInstance.id}">${fieldValue(bean: avaliacaoFuncionarioInstance, field: "cpa")}</g:link></td>
			
				<td>${fieldValue(bean: avaliacaoFuncionarioInstance, field: "departamento")}</td>
			
				<td>${fieldValue(bean: avaliacaoFuncionarioInstance, field: "tempo")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${avaliacaoFuncionarioInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
