
<%@ page import="br.edu.unibalsas.siscpa.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-curso" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
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
				<g:paginate total="${cursoInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
