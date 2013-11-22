
<%@ page import="br.edu.unibalsas.siscpa.ValorResposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'valorResposta.label', default: 'ValorResposta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-valorResposta" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-valorResposta" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="valorResposta.resposta.label" default="Resposta" /></th>
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${valorRespostaInstanceList}" status="i" var="valorRespostaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${valorRespostaInstance.id}">${fieldValue(bean: valorRespostaInstance, field: "resposta")}</g:link></td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${valorRespostaInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
