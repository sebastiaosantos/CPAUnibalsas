
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoComunidadeExterna" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoComunidadeExterna.label', default: 'AvaliacaoComunidadeExterna')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-avaliacaoComunidadeExterna" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-avaliacaoComunidadeExterna" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="avaliacaoComunidadeExterna.cpa.label" default="Cpa" /></th>
			
				<g:sortableColumn property="tempo" title="${message(code: 'avaliacaoComunidadeExterna.tempo.label', default: 'Tempo')}" />
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${avaliacaoComunidadeExternaInstanceList}" status="i" var="avaliacaoComunidadeExternaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${avaliacaoComunidadeExternaInstance.id}">${fieldValue(bean: avaliacaoComunidadeExternaInstance, field: "cpa")}</g:link></td>
			
				<td>${fieldValue(bean: avaliacaoComunidadeExternaInstance, field: "tempo")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${avaliacaoComunidadeExternaInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
