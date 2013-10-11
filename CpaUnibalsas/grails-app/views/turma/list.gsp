
<%@ page import="br.edu.unibalsas.siscpa.Turma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'turma.label', default: 'Turma')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-turma" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="codigo" title="${message(code: 'turma.codigo.label', default: 'Codigo')}" />
			
				<th><g:message code="turma.curso.label" default="Curso" /></th>
			
				<g:sortableColumn property="nome" title="${message(code: 'turma.nome.label', default: 'Nome')}" />
			
				<g:sortableColumn property="periodo" title="${message(code: 'turma.periodo.label', default: 'Periodo')}" />
			
				<th><g:message code="turma.professor.label" default="Professor" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${turmaInstanceList}" status="i" var="turmaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${turmaInstance.id}">${fieldValue(bean: turmaInstance, field: "codigo")}</g:link></td>
			
				<td>${fieldValue(bean: turmaInstance, field: "curso")}</td>
			
				<td>${fieldValue(bean: turmaInstance, field: "nome")}</td>
			
				<td>${fieldValue(bean: turmaInstance, field: "periodo")}</td>
			
				<td>${fieldValue(bean: turmaInstance, field: "professor")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${turmaInstanceTotal}" />
	</div>
</section>

</body>

</html>
