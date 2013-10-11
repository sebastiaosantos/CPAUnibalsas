
<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestaoCategoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'tipoDeQuestaoCategoria.label', default: 'TipoDeQuestaoCategoria')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-tipoDeQuestaoCategoria" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="categorias" title="${message(code: 'tipoDeQuestaoCategoria.categorias.label', default: 'Categorias')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'tipoDeQuestaoCategoria.descricao.label', default: 'Descricao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tipoDeQuestaoCategoriaInstanceList}" status="i" var="tipoDeQuestaoCategoriaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tipoDeQuestaoCategoriaInstance.id}">${fieldValue(bean: tipoDeQuestaoCategoriaInstance, field: "categorias")}</g:link></td>
					
						<td>${fieldValue(bean: tipoDeQuestaoCategoriaInstance, field: "descricao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tipoDeQuestaoCategoriaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
