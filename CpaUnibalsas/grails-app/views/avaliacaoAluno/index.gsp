
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoAluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoAluno.label', default: 'AvaliacaoAluno')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-avaliacaoAluno" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="avaliacaoAluno.cpa.label" default="Cpa" /></th>
					
						<th><g:message code="avaliacaoAluno.curso.label" default="Curso" /></th>
					
						<g:sortableColumn property="periodo" title="${message(code: 'avaliacaoAluno.periodo.label', default: 'Periodo')}" />
					
						<g:sortableColumn property="tempo" title="${message(code: 'avaliacaoAluno.tempo.label', default: 'Tempo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${avaliacaoAlunoInstanceList}" status="i" var="avaliacaoAlunoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${avaliacaoAlunoInstance.id}">${fieldValue(bean: avaliacaoAlunoInstance, field: "cpa")}</g:link></td>
					
						<td>${fieldValue(bean: avaliacaoAlunoInstance, field: "curso")}</td>
					
						<td>${fieldValue(bean: avaliacaoAlunoInstance, field: "periodo")}</td>
					
						<td>${fieldValue(bean: avaliacaoAlunoInstance, field: "tempo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${avaliacaoAlunoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
