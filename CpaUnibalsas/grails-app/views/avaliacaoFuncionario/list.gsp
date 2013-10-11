
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoFuncionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoFuncionario.label', default: 'AvaliacaoFuncionario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
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
		<bs:paginate total="${avaliacaoFuncionarioInstanceTotal}" />
	</div>
</section>

</body>

</html>
