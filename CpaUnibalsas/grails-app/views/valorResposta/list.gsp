
<%@ page import="br.edu.unibalsas.siscpa.ValorResposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'valorResposta.label', default: 'ValorResposta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
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
		<bs:paginate total="${valorRespostaInstanceTotal}" />
	</div>
</section>

</body>

</html>
