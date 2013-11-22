
<%@ page import="br.edu.unibalsas.siscpa.ValorRespostaAberta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'valorRespostaAberta.label', default: 'ValorRespostaAberta')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-valorRespostaAberta" class="first">

	<table class="table table-bordered table-responsive"">
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
		<bs:paginate total="${valorRespostaAbertaInstanceCount}" />
	</div>
</section>

</body>

</html>
