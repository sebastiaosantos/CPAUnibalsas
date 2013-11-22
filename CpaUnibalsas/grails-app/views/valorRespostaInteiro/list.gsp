
<%@ page import="br.edu.unibalsas.siscpa.ValorRespostaInteiro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'valorRespostaInteiro.label', default: 'ValorRespostaInteiro')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-valorRespostaInteiro" class="first">

	<table class="table table-bordered table-responsive"">
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
		<bs:paginate total="${valorRespostaInteiroInstanceCount}" />
	</div>
</section>

</body>

</html>
