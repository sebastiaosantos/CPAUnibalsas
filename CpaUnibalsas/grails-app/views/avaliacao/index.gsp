
<%@ page import="br.edu.unibalsas.siscpa.Avaliacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacao.label', default: 'Avaliacao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-avaliacao" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-avaliacao" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="avaliacao.cpa.label" default="Cpa" /></th>
			
				<g:sortableColumn property="tempo" title="${message(code: 'avaliacao.tempo.label', default: 'Tempo')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${avaliacaoInstanceList}" status="i" var="avaliacaoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${avaliacaoInstance.id}">${fieldValue(bean: avaliacaoInstance, field: "cpa")}</g:link></td>
			
				<td>${fieldValue(bean: avaliacaoInstance, field: "tempo")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${avaliacaoInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
