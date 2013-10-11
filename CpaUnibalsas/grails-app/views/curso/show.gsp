
<%@ page import="br.edu.unibalsas.siscpa.Curso" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'curso.label', default: 'Curso')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-curso" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table curso">
			
				<g:if test="${cursoInstance?.tipo}">
				<li class="prop">
					<span id="tipo-label" class="name"><g:message code="curso.tipo.label" default="Tipo" /></span>
					
						<span class="value" aria-labelledby="tipo-label"><g:fieldValue bean="${cursoInstance}" field="tipo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.nome}">
				<li class="prop">
					<span id="nome-label" class="name"><g:message code="curso.nome.label" default="Nome" /></span>
					
						<span class="value" aria-labelledby="nome-label"><g:fieldValue bean="${cursoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${cursoInstance?.turmas}">
				<li class="prop">
					<span id="turmas-label" class="name"><g:message code="curso.turmas.label" default="Turmas" /></span>
					
						<g:each in="${cursoInstance.turmas}" var="t">
						<span class="value"turmas-label"><g:link controller="turma" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:cursoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${cursoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
