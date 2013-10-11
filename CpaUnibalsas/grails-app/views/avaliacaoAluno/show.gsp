
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoAluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoAluno.label', default: 'AvaliacaoAluno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-avaliacaoAluno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table avaliacaoAluno">
			
				<g:if test="${avaliacaoAlunoInstance?.cpa}">
				<li class="prop">
					<span id="cpa-label" class="name"><g:message code="avaliacaoAluno.cpa.label" default="Cpa" /></span>
					
						<span class="value" aria-labelledby="cpa-label"><g:link controller="CPA" action="show" id="${avaliacaoAlunoInstance?.cpa?.id}">${avaliacaoAlunoInstance?.cpa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoAlunoInstance?.curso}">
				<li class="prop">
					<span id="curso-label" class="name"><g:message code="avaliacaoAluno.curso.label" default="Curso" /></span>
					
						<span class="value" aria-labelledby="curso-label"><g:link controller="curso" action="show" id="${avaliacaoAlunoInstance?.curso?.id}">${avaliacaoAlunoInstance?.curso?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoAlunoInstance?.periodo}">
				<li class="prop">
					<span id="periodo-label" class="name"><g:message code="avaliacaoAluno.periodo.label" default="Periodo" /></span>
					
						<span class="value" aria-labelledby="periodo-label"><g:fieldValue bean="${avaliacaoAlunoInstance}" field="periodo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoAlunoInstance?.respostas}">
				<li class="prop">
					<span id="respostas-label" class="name"><g:message code="avaliacaoAluno.respostas.label" default="Respostas" /></span>
					
						<g:each in="${avaliacaoAlunoInstance.respostas}" var="r">
						<span class="value"respostas-label"><g:link controller="resposta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoAlunoInstance?.tempo}">
				<li class="prop">
					<span id="tempo-label" class="name"><g:message code="avaliacaoAluno.tempo.label" default="Tempo" /></span>
					
						<span class="value" aria-labelledby="tempo-label"><g:fieldValue bean="${avaliacaoAlunoInstance}" field="tempo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:avaliacaoAlunoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${avaliacaoAlunoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
