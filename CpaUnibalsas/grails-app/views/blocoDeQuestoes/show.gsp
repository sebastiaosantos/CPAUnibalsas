
<%@ page import="br.edu.unibalsas.siscpa.BlocoDeQuestoes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'blocoDeQuestoes.label', default: 'BlocoDeQuestoes')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-blocoDeQuestoes" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table blocoDeQuestoes">
			
				<g:if test="${blocoDeQuestoesInstance?.descricao}">
				<li class="prop">
					<span id="descricao-label" class="name"><g:message code="blocoDeQuestoes.descricao.label" default="Descricao" /></span>
					
						<span class="value" aria-labelledby="descricao-label"><g:fieldValue bean="${blocoDeQuestoesInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${blocoDeQuestoesInstance?.objetoAvaliado}">
				<li class="prop">
					<span id="objetoAvaliado-label" class="name"><g:message code="blocoDeQuestoes.objetoAvaliado.label" default="Objeto Avaliado" /></span>
					
						<span class="value" aria-labelledby="objetoAvaliado-label"><g:link controller="objetoAvaliado" action="show" id="${blocoDeQuestoesInstance?.objetoAvaliado?.id}">${blocoDeQuestoesInstance?.objetoAvaliado?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${blocoDeQuestoesInstance?.questoes}">
				<li class="prop">
					<span id="questoes-label" class="name"><g:message code="blocoDeQuestoes.questoes.label" default="Questoes" /></span>
					
						<g:each in="${blocoDeQuestoesInstance.questoes}" var="q">
						<span class="value"questoes-label"><g:link controller="questao" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:blocoDeQuestoesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${blocoDeQuestoesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
