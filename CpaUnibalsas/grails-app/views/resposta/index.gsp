
<%@ page import="br.edu.unibalsas.siscpa.Resposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'resposta.label', default: 'Resposta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-resposta" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="resposta.avaliacao.label" default="Avaliacao" /></th>
					
						<th><g:message code="resposta.questao.label" default="Questao" /></th>
					
						<th><g:message code="resposta.valorResposta.label" default="Valor Resposta" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${respostaInstanceList}" status="i" var="respostaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${respostaInstance.id}">${fieldValue(bean: respostaInstance, field: "avaliacao")}</g:link></td>
					
						<td>${fieldValue(bean: respostaInstance, field: "questao")}</td>
					
						<td>${fieldValue(bean: respostaInstance, field: "valorResposta")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${respostaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
