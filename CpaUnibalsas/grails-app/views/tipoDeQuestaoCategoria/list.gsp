
<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestaoCategoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'tipoDeQuestaoCategoria.label', default: 'TipoDeQuestaoCategoria')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-tipoDeQuestaoCategoria" class="first">

	<table class="table table-bordered table-responsive"">
		<thead>
			<tr>
			
				<g:sortableColumn property="categorias" title="${message(code: 'tipoDeQuestaoCategoria.categorias.label', default: 'Categorias')}" />
			
				<g:sortableColumn property="descricao" title="${message(code: 'tipoDeQuestaoCategoria.descricao.label', default: 'Descricao')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${tipoDeQuestaoCategoriaInstanceList}" status="i" var="tipoDeQuestaoCategoriaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${tipoDeQuestaoCategoriaInstance.id}">${fieldValue(bean: tipoDeQuestaoCategoriaInstance, field: "categorias")}</g:link></td>
			
				<td>${fieldValue(bean: tipoDeQuestaoCategoriaInstance, field: "descricao")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${tipoDeQuestaoCategoriaInstanceCount}" />
	</div>
</section>

</body>

</html>
