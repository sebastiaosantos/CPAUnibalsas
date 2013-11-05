
<%@ page import="br.edu.unibalsas.siscpa.Questao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-questao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table questao">
			
				<g:if test="${questaoInstance?.descricao}">
				<li class="prop">
					<span id="descricao-label" class="name"><g:message code="questao.descricao.label" default="Descricao" /></span>
					
						<span class="value" aria-labelledby="descricao-label"><g:fieldValue bean="${questaoInstance}" field="descricao"/></span>
						
						<span id="ordem-label" class="name"><g:message code="questao.ordem.label" default="Ordem" /></span>
					
						<span class="value" aria-labelledby="ordem-label"><g:fieldValue bean="${questaoInstance}" field="ordem"/></span>
						
						<span id="blocoDeQuestoes-label" class="name"><g:message code="questao.blocoDeQuestoes.label" default="Bloco de Questões" /></span>
					
						<span class="value" aria-labelledby="blocoDeQuestoes-label"><g:fieldValue bean="${questaoInstance}" field="blocoDeQuestoes"/></span>
						
						<span id="tipo-label" class="name"><g:message code="questao.tipo.label" default="Tipo de Questões" /></span>
					
						<span class="value" aria-labelledby="tipo-label"><g:fieldValue bean="${questaoInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
				
			
			</ol>
			<g:form url="[resource:questaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${questaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
