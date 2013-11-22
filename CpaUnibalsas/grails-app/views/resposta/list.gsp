
<%@ page import="br.edu.unibalsas.siscpa.Resposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'resposta.label', default: 'Resposta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-resposta" class="first">

	<table class="table table-bordered table-responsive"">
		<thead>
			<tr>
			
				<th><g:message code="resposta.avaliacao.label" default="Avaliacao" /></th>
			
				<th><g:message code="resposta.questao.label" default="Questao" /></th>
			
				<th><g:message code="resposta.valorResposta.label" default="Valor Resposta" /></th>
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${respostaInstanceList}" status="i" var="respostaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${respostaInstance.id}">${fieldValue(bean: respostaInstance, field: "avaliacao")}</g:link></td>
			
				<td>${fieldValue(bean: respostaInstance, field: "questao")}</td>
			
				<td>${fieldValue(bean: respostaInstance, field: "valorResposta")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${respostaInstanceCount}" />
	</div>
</section>

</body>

</html>
