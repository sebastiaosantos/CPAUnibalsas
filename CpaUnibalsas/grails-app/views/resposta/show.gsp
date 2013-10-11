
<%@ page import="br.edu.unibalsas.siscpa.Resposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'resposta.label', default: 'Resposta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-resposta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table resposta">
			
				<g:if test="${respostaInstance?.avaliacao}">
				<li class="prop">
					<span id="avaliacao-label" class="name"><g:message code="resposta.avaliacao.label" default="Avaliacao" /></span>
					
						<span class="value" aria-labelledby="avaliacao-label"><g:link controller="avaliacao" action="show" id="${respostaInstance?.avaliacao?.id}">${respostaInstance?.avaliacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${respostaInstance?.questao}">
				<li class="prop">
					<span id="questao-label" class="name"><g:message code="resposta.questao.label" default="Questao" /></span>
					
						<span class="value" aria-labelledby="questao-label"><g:link controller="questao" action="show" id="${respostaInstance?.questao?.id}">${respostaInstance?.questao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${respostaInstance?.valorResposta}">
				<li class="prop">
					<span id="valorResposta-label" class="name"><g:message code="resposta.valorResposta.label" default="Valor Resposta" /></span>
					
						<span class="value" aria-labelledby="valorResposta-label"><g:link controller="valorResposta" action="show" id="${respostaInstance?.valorResposta?.id}">${respostaInstance?.valorResposta?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:respostaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${respostaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
