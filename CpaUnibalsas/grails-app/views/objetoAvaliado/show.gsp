
<%@ page import="br.edu.unibalsas.siscpa.ObjetoAvaliado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'objetoAvaliado.label', default: 'ObjetoAvaliado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-objetoAvaliado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table objetoAvaliado">
			
				<g:if test="${objetoAvaliadoInstance?.blocoDeQuestoes}">
				<li class="prop">
					<span id="blocoDeQuestoes-label" class="name"><g:message code="objetoAvaliado.blocoDeQuestoes.label" default="Bloco De Questoes" /></span>
					
						<g:each in="${objetoAvaliadoInstance.blocoDeQuestoes}" var="b">
						<span class="value"blocoDeQuestoes-label"><g:link controller="blocoDeQuestoes" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${objetoAvaliadoInstance?.nome}">
				<li class="prop">
					<span id="nome-label" class="name"><g:message code="objetoAvaliado.nome.label" default="Nome" /></span>
					
						<span class="value" aria-labelledby="nome-label"><g:fieldValue bean="${objetoAvaliadoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:objetoAvaliadoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${objetoAvaliadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
