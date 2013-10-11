
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoFuncionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoFuncionario.label', default: 'AvaliacaoFuncionario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-avaliacaoFuncionario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table avaliacaoFuncionario">
			
				<g:if test="${avaliacaoFuncionarioInstance?.cpa}">
				<li class="prop">
					<span id="cpa-label" class="name"><g:message code="avaliacaoFuncionario.cpa.label" default="Cpa" /></span>
					
						<span class="value" aria-labelledby="cpa-label"><g:link controller="CPA" action="show" id="${avaliacaoFuncionarioInstance?.cpa?.id}">${avaliacaoFuncionarioInstance?.cpa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoFuncionarioInstance?.departamento}">
				<li class="prop">
					<span id="departamento-label" class="name"><g:message code="avaliacaoFuncionario.departamento.label" default="Departamento" /></span>
					
						<span class="value" aria-labelledby="departamento-label"><g:link controller="departamento" action="show" id="${avaliacaoFuncionarioInstance?.departamento?.id}">${avaliacaoFuncionarioInstance?.departamento?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoFuncionarioInstance?.respostas}">
				<li class="prop">
					<span id="respostas-label" class="name"><g:message code="avaliacaoFuncionario.respostas.label" default="Respostas" /></span>
					
						<g:each in="${avaliacaoFuncionarioInstance.respostas}" var="r">
						<span class="value"respostas-label"><g:link controller="resposta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoFuncionarioInstance?.tempo}">
				<li class="prop">
					<span id="tempo-label" class="name"><g:message code="avaliacaoFuncionario.tempo.label" default="Tempo" /></span>
					
						<span class="value" aria-labelledby="tempo-label"><g:fieldValue bean="${avaliacaoFuncionarioInstance}" field="tempo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:avaliacaoFuncionarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${avaliacaoFuncionarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
