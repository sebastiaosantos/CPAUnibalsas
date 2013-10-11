
<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'tipoDeQuestao.label', default: 'TipoDeQuestao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-tipoDeQuestao" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="descricao" title="${message(code: 'tipoDeQuestao.descricao.label', default: 'Descricao')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${tipoDeQuestaoInstanceList}" status="i" var="tipoDeQuestaoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${tipoDeQuestaoInstance.id}">${fieldValue(bean: tipoDeQuestaoInstance, field: "descricao")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${tipoDeQuestaoInstanceTotal}" />
	</div>
</section>

</body>

</html>
