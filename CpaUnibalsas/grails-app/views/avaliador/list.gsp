
<%@ page import="br.edu.unibalsas.siscpa.Avaliador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliador.label', default: 'Avaliador')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-avaliador" class="first">

	<table class="table table-bordered table-responsive"">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'avaliador.nome.label', default: 'Nome')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${avaliadorInstanceList}" status="i" var="avaliadorInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${avaliadorInstance.id}">${fieldValue(bean: avaliadorInstance, field: "nome")}</g:link></td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${avaliadorInstanceCount}" />
	</div>
</section>

</body>

</html>
