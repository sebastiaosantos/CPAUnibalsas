
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoComunidadeExterna" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoComunidadeExterna.label', default: 'AvaliacaoComunidadeExterna')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-avaliacaoComunidadeExterna" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table avaliacaoComunidadeExterna">
			
				<g:if test="${avaliacaoComunidadeExternaInstance?.cpa}">
				<li class="prop">
					<span id="cpa-label" class="name"><g:message code="avaliacaoComunidadeExterna.cpa.label" default="Cpa" /></span>
					
						<span class="value" aria-labelledby="cpa-label"><g:link controller="CPA" action="show" id="${avaliacaoComunidadeExternaInstance?.cpa?.id}">${avaliacaoComunidadeExternaInstance?.cpa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoComunidadeExternaInstance?.respostas}">
				<li class="prop">
					<span id="respostas-label" class="name"><g:message code="avaliacaoComunidadeExterna.respostas.label" default="Respostas" /></span>
					
						<g:each in="${avaliacaoComunidadeExternaInstance.respostas}" var="r">
						<span class="value"respostas-label"><g:link controller="resposta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoComunidadeExternaInstance?.tempo}">
				<li class="prop">
					<span id="tempo-label" class="name"><g:message code="avaliacaoComunidadeExterna.tempo.label" default="Tempo" /></span>
					
						<span class="value" aria-labelledby="tempo-label"><g:fieldValue bean="${avaliacaoComunidadeExternaInstance}" field="tempo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:avaliacaoComunidadeExternaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${avaliacaoComunidadeExternaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
