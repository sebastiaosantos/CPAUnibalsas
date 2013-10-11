
<%@ page import="br.edu.unibalsas.siscpa.Codigo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'codigo.label', default: 'Codigo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-codigo" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="texto" title="${message(code: 'codigo.texto.label', default: 'Texto')}" />
					
						<g:sortableColumn property="avaliador" title="${message(code: 'codigo.avaliador.label', default: 'Avaliador')}" />
					
						<g:sortableColumn property="usado" title="${message(code: 'codigo.usado.label', default: 'Usado')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${codigoInstanceList}" status="i" var="codigoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${codigoInstance.id}">${fieldValue(bean: codigoInstance, field: "texto")}</g:link></td>
					
						<td>${fieldValue(bean: codigoInstance, field: "avaliador")}</td>
					
						<td><g:formatBoolean boolean="${codigoInstance.usado}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${codigoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
