
<%@ page import="br.edu.unibalsas.siscpa.Questao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-questao" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="descricao" title="${message(code: 'questao.descricao.label', default: 'Descricao')}" />
				<g:sortableColumn property="ordem" title="${message(code: 'questao.ordem.label', default: 'Ordem')}" />
			   <g:sortableColumn property="blocoDeQuestoes" title="${message(code: 'questao.blocoDeQuestoes.label', default: 'Bloco de questões')}" />
			    <g:sortableColumn property="tipo" title="${message(code: 'questao.tipo.label', default: 'Tipo de questões')}" />
				
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${questaoInstanceList}" status="i" var="questaoInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${questaoInstance.id}">${fieldValue(bean: questaoInstance, field: "descricao")}</g:link></td>
		        <td><g:link action="show" id="${questaoInstance.id}">${fieldValue(bean: questaoInstance, field: "ordem")}</g:link></td>
		        <td><g:link action="show" id="${questaoInstance.id}">${fieldValue(bean: questaoInstance, field: "blocoDeQuestoes")}</g:link></td>
		        <td><g:link action="show" id="${questaoInstance.id}">${fieldValue(bean: questaoInstance, field: "tipo")}</g:link></td>
		        
				
				
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${questaoInstanceTotal}" />
	</div>
</section>

</body>

</html>
