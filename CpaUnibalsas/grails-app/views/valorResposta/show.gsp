
<%@ page import="br.edu.unibalsas.siscpa.ValorResposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'valorResposta.label', default: 'ValorResposta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-valorResposta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table valorResposta">
			
				<g:if test="${valorRespostaInstance?.resposta}">
				<li class="prop">
					<span id="resposta-label" class="name"><g:message code="valorResposta.resposta.label" default="Resposta" /></span>
					
						<span class="value" aria-labelledby="resposta-label"><g:link controller="resposta" action="show" id="${valorRespostaInstance?.resposta?.id}">${valorRespostaInstance?.resposta?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:valorRespostaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${valorRespostaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
