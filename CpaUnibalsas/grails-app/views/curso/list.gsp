
<%@ page import="br.edu.unibalsas.siscpa.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-curso" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="tipo" title="${message(code: 'curso.tipo.label', default: 'Tipo')}" />
			
				<g:sortableColumn property="nome" title="${message(code: 'curso.nome.label', default: 'Nome')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${cursoInstanceList}" status="i" var="cursoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${cursoInstance.id}">${fieldValue(bean: cursoInstance, field: "tipo")}</g:link></td>
			
				<td>${fieldValue(bean: cursoInstance, field: "nome")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${cursoInstanceTotal}" />
	</div>
</section>

</body>

</html>
