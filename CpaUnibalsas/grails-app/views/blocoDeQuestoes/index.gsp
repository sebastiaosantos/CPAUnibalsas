
<%@ page import="br.edu.unibalsas.siscpa.BlocoDeQuestoes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'blocoDeQuestoes.label', default: 'BlocoDeQuestoes')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-blocoDeQuestoes" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'blocoDeQuestoes.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="blocoDeQuestoes.objetoAvaliado.label" default="Objeto Avaliado" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${blocoDeQuestoesInstanceList}" status="i" var="blocoDeQuestoesInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${blocoDeQuestoesInstance.id}">${fieldValue(bean: blocoDeQuestoesInstance, field: "descricao")}</g:link></td>
					
						<td>${fieldValue(bean: blocoDeQuestoesInstance, field: "objetoAvaliado")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${blocoDeQuestoesInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
