
<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestaoOrdinal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'tipoDeQuestaoOrdinal.label', default: 'TipoDeQuestaoOrdinal')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-tipoDeQuestaoOrdinal" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-tipoDeQuestaoOrdinal" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="descricao" title="${message(code: 'tipoDeQuestaoOrdinal.descricao.label', default: 'Descricao')}" />
			
				<g:sortableColumn property="fim" title="${message(code: 'tipoDeQuestaoOrdinal.fim.label', default: 'Fim')}" />
			
				<g:sortableColumn property="inicio" title="${message(code: 'tipoDeQuestaoOrdinal.inicio.label', default: 'Inicio')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${tipoDeQuestaoOrdinalInstanceList}" status="i" var="tipoDeQuestaoOrdinalInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${tipoDeQuestaoOrdinalInstance.id}">${fieldValue(bean: tipoDeQuestaoOrdinalInstance, field: "descricao")}</g:link></td>
			
				<td>${fieldValue(bean: tipoDeQuestaoOrdinalInstance, field: "fim")}</td>
			
				<td>${fieldValue(bean: tipoDeQuestaoOrdinalInstance, field: "inicio")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${tipoDeQuestaoOrdinalInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
