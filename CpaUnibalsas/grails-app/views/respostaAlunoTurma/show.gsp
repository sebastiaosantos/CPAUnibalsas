
<%@ page import="br.edu.unibalsas.siscpa.RespostaAlunoTurma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'respostaAlunoTurma.label', default: 'RespostaAlunoTurma')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-respostaAlunoTurma" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table respostaAlunoTurma">
			
				<g:if test="${respostaAlunoTurmaInstance?.avaliacao}">
				<li class="prop">
					<span id="avaliacao-label" class="name"><g:message code="respostaAlunoTurma.avaliacao.label" default="Avaliacao" /></span>
					
						<span class="value" aria-labelledby="avaliacao-label"><g:link controller="avaliacao" action="show" id="${respostaAlunoTurmaInstance?.avaliacao?.id}">${respostaAlunoTurmaInstance?.avaliacao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${respostaAlunoTurmaInstance?.questao}">
				<li class="prop">
					<span id="questao-label" class="name"><g:message code="respostaAlunoTurma.questao.label" default="Questao" /></span>
					
						<span class="value" aria-labelledby="questao-label"><g:link controller="questao" action="show" id="${respostaAlunoTurmaInstance?.questao?.id}">${respostaAlunoTurmaInstance?.questao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${respostaAlunoTurmaInstance?.turma}">
				<li class="prop">
					<span id="turma-label" class="name"><g:message code="respostaAlunoTurma.turma.label" default="Turma" /></span>
					
						<span class="value" aria-labelledby="turma-label"><g:link controller="turma" action="show" id="${respostaAlunoTurmaInstance?.turma?.id}">${respostaAlunoTurmaInstance?.turma?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${respostaAlunoTurmaInstance?.valorResposta}">
				<li class="prop">
					<span id="valorResposta-label" class="name"><g:message code="respostaAlunoTurma.valorResposta.label" default="Valor Resposta" /></span>
					
						<span class="value" aria-labelledby="valorResposta-label"><g:link controller="valorResposta" action="show" id="${respostaAlunoTurmaInstance?.valorResposta?.id}">${respostaAlunoTurmaInstance?.valorResposta?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:respostaAlunoTurmaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${respostaAlunoTurmaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
