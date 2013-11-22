
<%@ page import="br.edu.unibalsas.siscpa.BlocoDeQuestoes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'blocoDeQuestoes.label', default: 'BlocoDeQuestoes')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
<section id="list-blocoDeQuestoes" class="first">

	<table class="table table-bordered table-responsive"">
		<thead>
			<tr>
			
				<g:sortableColumn property="descricao" title="${message(code: 'blocoDeQuestoes.descricao.label', default: 'Descricao')}" />
			
				<th><g:message code="blocoDeQuestoes.objetoAvaliado.label" default="Objeto Avaliado" /></th>
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${blocoDeQuestoesInstanceList}" status="i" var="blocoDeQuestoesInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${blocoDeQuestoesInstance.id}">${fieldValue(bean: blocoDeQuestoesInstance, field: "descricao")}</g:link></td>
			
				<td>${fieldValue(bean: blocoDeQuestoesInstance, field: "objetoAvaliado")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${blocoDeQuestoesInstanceCount}" />
	</div>
</section>

</body>

</html>
