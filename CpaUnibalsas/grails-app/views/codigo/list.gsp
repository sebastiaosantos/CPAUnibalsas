
<%@ page import="br.edu.unibalsas.siscpa.Codigo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'codigo.label', default: 'Codigo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-codigo" class="first">

	<table class="table table-bordered table-responsive"">
		<thead>
			<tr>
			
				<g:sortableColumn property="texto" title="${message(code: 'codigo.texto.label', default: 'Texto')}" />
			
				<g:sortableColumn property="avaliador" title="${message(code: 'codigo.avaliador.label', default: 'Avaliador')}" />
			
				<g:sortableColumn property="usado" title="${message(code: 'codigo.usado.label', default: 'Usado')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${codigoInstanceList}" status="i" var="codigoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${codigoInstance.id}">${fieldValue(bean: codigoInstance, field: "texto")}</g:link></td>
			
				<td>${fieldValue(bean: codigoInstance, field: "avaliador")}</td>
			
				<td><g:formatBoolean boolean="${codigoInstance.usado}" /></td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${codigoInstanceCount}" />
	</div>
</section>

</body>

</html>
