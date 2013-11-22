
<%@ page import="br.edu.unibalsas.siscpa.ValorRespostaInteiro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'valorRespostaInteiro.label', default: 'ValorRespostaInteiro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-valorRespostaInteiro" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-valorRespostaInteiro" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${valorRespostaInteiroInstanceList}" status="i" var="valorRespostaInteiroInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${valorRespostaInteiroInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
