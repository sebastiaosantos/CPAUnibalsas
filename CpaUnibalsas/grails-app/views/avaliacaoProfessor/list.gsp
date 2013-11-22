
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoProfessor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoProfessor.label', default: 'AvaliacaoProfessor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-avaliacaoProfessor" class="first">

	<table class="table table-bordered table-responsive"">
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
		<bs:paginate total="${avaliacaoProfessorInstanceCount}" />
	</div>
</section>

</body>

</html>
