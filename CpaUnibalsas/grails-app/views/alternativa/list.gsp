
<%@ page import="br.edu.unibalsas.siscpa.Alternativa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'alternativa.label', default: 'Alternativa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-alternativa" class="first">

	<table class="table table-bordered table-responsive"">
		<thead>
			<tr>
			
				<g:sortableColumn property="descricao" title="${message(code: 'alternativa.descricao.label', default: 'Descricao')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${alternativaInstanceList}" status="i" var="alternativaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${alternativaInstance.id}">${fieldValue(bean: alternativaInstance, field: "descricao")}</g:link></td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${alternativaInstanceTotal}" />
	</div>
</section>

</body>

</html>
