
<%@ page import="br.edu.unibalsas.siscpa.CPA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'CPA.label', default: 'CPA')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-CPA" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'CPA.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="semestre" title="${message(code: 'CPA.semestre.label', default: 'Semestre')}" />
					
						<g:sortableColumn property="dataDeCriacao" title="${message(code: 'CPA.dataDeCriacao.label', default: 'Data De Criacao')}" />
					
						<g:sortableColumn property="ativa" title="${message(code: 'CPA.ativa.label', default: 'Ativa')}" />
					
						<g:sortableColumn property="tipoAvaliadorAtivo" title="${message(code: 'CPA.tipoAvaliadorAtivo.label', default: 'Tipo Avaliador Ativo')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${CPAInstanceList}" status="i" var="CPAInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${CPAInstance.id}">${fieldValue(bean: CPAInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: CPAInstance, field: "semestre")}</td>
					
						<td><g:formatDate date="${CPAInstance.dataDeCriacao}" /></td>
					
						<td><g:formatBoolean boolean="${CPAInstance.ativa}" /></td>
					
						<td>${fieldValue(bean: CPAInstance, field: "tipoAvaliadorAtivo")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${CPAInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
