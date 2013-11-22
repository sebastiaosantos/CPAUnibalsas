
<%@ page import="br.edu.unibalsas.siscpa.Professor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'professor.label', default: 'Professor')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-professor" class="first">

	<table class="table table-bordered table-responsive"">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'professor.nome.label', default: 'Nome')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${professorInstanceList}" status="i" var="professorInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${professorInstance.id}">${fieldValue(bean: professorInstance, field: "nome")}</g:link></td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${professorInstanceCount}" />
	</div>
</section>

</body>

</html>
