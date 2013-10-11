
<%@ page import="br.edu.unibalsas.siscpa.CPA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'CPA.label', default: 'CPA')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-CPA" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table CPA">
			
				<g:if test="${CPAInstance?.descricao}">
				<li class="prop">
					<span id="descricao-label" class="name"><g:message code="CPA.descricao.label" default="Descricao" /></span>
					
						<span class="value" aria-labelledby="descricao-label"><g:fieldValue bean="${CPAInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${CPAInstance?.semestre}">
				<li class="prop">
					<span id="semestre-label" class="name"><g:message code="CPA.semestre.label" default="Semestre" /></span>
					
						<span class="value" aria-labelledby="semestre-label"><g:fieldValue bean="${CPAInstance}" field="semestre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${CPAInstance?.dataDeCriacao}">
				<li class="prop">
					<span id="dataDeCriacao-label" class="name"><g:message code="CPA.dataDeCriacao.label" default="Data De Criacao" /></span>
					
						<span class="value" aria-labelledby="dataDeCriacao-label"><g:formatDate date="${CPAInstance?.dataDeCriacao}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${CPAInstance?.ativa}">
				<li class="prop">
					<span id="ativa-label" class="name"><g:message code="CPA.ativa.label" default="Ativa" /></span>
					
						<span class="value" aria-labelledby="ativa-label"><g:formatBoolean boolean="${CPAInstance?.ativa}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${CPAInstance?.blocosDeQuestoes}">
				<li class="prop">
					<span id="blocosDeQuestoes-label" class="name"><g:message code="CPA.blocosDeQuestoes.label" default="Blocos De Questoes" /></span>
					
						<g:each in="${CPAInstance.blocosDeQuestoes}" var="b">
						<span class="value"blocosDeQuestoes-label"><g:link controller="blocoDeQuestoes" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${CPAInstance?.tipoAvaliadorAtivo}">
				<li class="prop">
					<span id="tipoAvaliadorAtivo-label" class="name"><g:message code="CPA.tipoAvaliadorAtivo.label" default="Tipo Avaliador Ativo" /></span>
					
						<span class="value"tipoAvaliadorAtivo-label"><g:fieldValue bean="${CPAInstance}" field="tipoAvaliadorAtivo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${CPAInstance?.turmas}">
				<li class="prop">
					<span id="turmas-label" class="name"><g:message code="CPA.turmas.label" default="Turmas" /></span>
					
						<g:each in="${CPAInstance.turmas}" var="t">
						<span class="value"turmas-label"><g:link controller="turma" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:CPAInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${CPAInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
