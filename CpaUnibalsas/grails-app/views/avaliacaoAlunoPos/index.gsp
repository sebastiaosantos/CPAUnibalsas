
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoAlunoPos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoAlunoPos.label', default: 'AvaliacaoAlunoPos')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-avaliacaoAlunoPos" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-avaliacaoAlunoPos" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="avaliacaoAlunoPos.curso.label" default="Curso" /></th>
			
				<th><g:message code="avaliacaoAlunoPos.cpa.label" default="Cpa" /></th>
			
				<g:sortableColumn property="periodo" title="${message(code: 'avaliacaoAlunoPos.periodo.label', default: 'Periodo')}" />
			
				<g:sortableColumn property="tempo" title="${message(code: 'avaliacaoAlunoPos.tempo.label', default: 'Tempo')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${avaliacaoAlunoPosInstanceList}" status="i" var="avaliacaoAlunoPosInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${avaliacaoAlunoPosInstance.id}">${fieldValue(bean: avaliacaoAlunoPosInstance, field: "curso")}</g:link></td>
			
				<td>${fieldValue(bean: avaliacaoAlunoPosInstance, field: "cpa")}</td>
			
				<td>${fieldValue(bean: avaliacaoAlunoPosInstance, field: "periodo")}</td>
			
				<td>${fieldValue(bean: avaliacaoAlunoPosInstance, field: "tempo")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${avaliacaoAlunoPosInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
