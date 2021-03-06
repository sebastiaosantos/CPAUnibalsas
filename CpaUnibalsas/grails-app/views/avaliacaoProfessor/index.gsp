
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoProfessor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoProfessor.label', default: 'AvaliacaoProfessor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-avaliacaoProfessor" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-avaliacaoProfessor" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="avaliacaoProfessor.cpa.label" default="Cpa" /></th>
			
				<th><g:message code="avaliacaoProfessor.professor.label" default="Professor" /></th>
			
				<g:sortableColumn property="tempo" title="${message(code: 'avaliacaoProfessor.tempo.label', default: 'Tempo')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${avaliacaoProfessorInstanceList}" status="i" var="avaliacaoProfessorInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${avaliacaoProfessorInstance.id}">${fieldValue(bean: avaliacaoProfessorInstance, field: "cpa")}</g:link></td>
			
				<td>${fieldValue(bean: avaliacaoProfessorInstance, field: "professor")}</td>
			
				<td>${fieldValue(bean: avaliacaoProfessorInstance, field: "tempo")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${avaliacaoProfessorInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
