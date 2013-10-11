
<%@ page import="br.edu.unibalsas.siscpa.ObjetoAvaliado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'objetoAvaliado.label', default: 'ObjetoAvaliado')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-objetoAvaliado" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="nome" title="${message(code: 'objetoAvaliado.nome.label', default: 'Nome')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${objetoAvaliadoInstanceList}" status="i" var="objetoAvaliadoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${objetoAvaliadoInstance.id}">${fieldValue(bean: objetoAvaliadoInstance, field: "nome")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${objetoAvaliadoInstanceTotal}" />
	</div>
</section>

</body>

</html>
