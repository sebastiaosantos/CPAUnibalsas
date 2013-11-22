
<%@ page import="br.edu.unibalsas.siscpa.ValorRespostaAberta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'valorRespostaAberta.label', default: 'ValorRespostaAberta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-valorRespostaAberta" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-valorRespostaAberta" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="texto" title="${message(code: 'valorRespostaAberta.texto.label', default: 'Texto')}" />
			
				<th><g:message code="valorRespostaAberta.resposta.label" default="Resposta" /></th>
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${valorRespostaAbertaInstanceList}" status="i" var="valorRespostaAbertaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${valorRespostaAbertaInstance.id}">${fieldValue(bean: valorRespostaAbertaInstance, field: "texto")}</g:link></td>
			
				<td>${fieldValue(bean: valorRespostaAbertaInstance, field: "resposta")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${valorRespostaAbertaInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
