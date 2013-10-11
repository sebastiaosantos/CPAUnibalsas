
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoAlunoPos" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoAlunoPos.label', default: 'AvaliacaoAlunoPos')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-avaliacaoAlunoPos" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table avaliacaoAlunoPos">
			
				<g:if test="${avaliacaoAlunoPosInstance?.curso}">
				<li class="prop">
					<span id="curso-label" class="name"><g:message code="avaliacaoAlunoPos.curso.label" default="Curso" /></span>
					
						<span class="value" aria-labelledby="curso-label"><g:link controller="curso" action="show" id="${avaliacaoAlunoPosInstance?.curso?.id}">${avaliacaoAlunoPosInstance?.curso?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoAlunoPosInstance?.cpa}">
				<li class="prop">
					<span id="cpa-label" class="name"><g:message code="avaliacaoAlunoPos.cpa.label" default="Cpa" /></span>
					
						<span class="value" aria-labelledby="cpa-label"><g:link controller="CPA" action="show" id="${avaliacaoAlunoPosInstance?.cpa?.id}">${avaliacaoAlunoPosInstance?.cpa?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoAlunoPosInstance?.periodo}">
				<li class="prop">
					<span id="periodo-label" class="name"><g:message code="avaliacaoAlunoPos.periodo.label" default="Periodo" /></span>
					
						<span class="value" aria-labelledby="periodo-label"><g:fieldValue bean="${avaliacaoAlunoPosInstance}" field="periodo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoAlunoPosInstance?.respostas}">
				<li class="prop">
					<span id="respostas-label" class="name"><g:message code="avaliacaoAlunoPos.respostas.label" default="Respostas" /></span>
					
						<g:each in="${avaliacaoAlunoPosInstance.respostas}" var="r">
						<span class="value"respostas-label"><g:link controller="resposta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${avaliacaoAlunoPosInstance?.tempo}">
				<li class="prop">
					<span id="tempo-label" class="name"><g:message code="avaliacaoAlunoPos.tempo.label" default="Tempo" /></span>
					
						<span class="value" aria-labelledby="tempo-label"><g:fieldValue bean="${avaliacaoAlunoPosInstance}" field="tempo"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:avaliacaoAlunoPosInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${avaliacaoAlunoPosInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
