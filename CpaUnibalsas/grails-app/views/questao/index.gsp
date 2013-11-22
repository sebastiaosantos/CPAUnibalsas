
<%@ page import="br.edu.unibalsas.siscpa.Questao" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-questao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-questao" class="first">

	<table class="table table-bordered  table-responsive">
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
				<g:paginate total="${questaoInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
		
	</body>
</html>










<%--
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-questao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="descricao" title="${message(code: 'questao.descricao.label', default: 'Descricao')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questaoInstanceList}" status="i" var="questaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questaoInstance.id}">${fieldValue(bean: questaoInstance, field: "descricao")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

--%>

