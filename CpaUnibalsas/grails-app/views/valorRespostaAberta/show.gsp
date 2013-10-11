
<%@ page import="br.edu.unibalsas.siscpa.ValorRespostaAberta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'valorRespostaAberta.label', default: 'ValorRespostaAberta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-valorRespostaAberta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table valorRespostaAberta">
			
				<g:if test="${valorRespostaAbertaInstance?.texto}">
				<li class="prop">
					<span id="texto-label" class="name"><g:message code="valorRespostaAberta.texto.label" default="Texto" /></span>
					
						<span class="value" aria-labelledby="texto-label"><g:fieldValue bean="${valorRespostaAbertaInstance}" field="texto"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${valorRespostaAbertaInstance?.resposta}">
				<li class="prop">
					<span id="resposta-label" class="name"><g:message code="valorRespostaAberta.resposta.label" default="Resposta" /></span>
					
						<span class="value" aria-labelledby="resposta-label"><g:link controller="resposta" action="show" id="${valorRespostaAbertaInstance?.resposta?.id}">${valorRespostaAbertaInstance?.resposta?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:valorRespostaAbertaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${valorRespostaAbertaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
