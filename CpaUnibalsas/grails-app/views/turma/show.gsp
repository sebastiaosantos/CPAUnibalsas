
<%@ page import="br.edu.unibalsas.siscpa.Turma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'turma.label', default: 'Turma')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-turma" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table turma">
			
				<g:if test="${turmaInstance?.codigo}">
				<li class="prop">
					<span id="codigo-label" class="name"><g:message code="turma.codigo.label" default="Codigo" /></span>
					
						<span class="value" aria-labelledby="codigo-label"><g:fieldValue bean="${turmaInstance}" field="codigo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.curso}">
				<li class="prop">
					<span id="curso-label" class="name"><g:message code="turma.curso.label" default="Curso" /></span>
					
						<span class="value" aria-labelledby="curso-label"><g:link controller="curso" action="show" id="${turmaInstance?.curso?.id}">${turmaInstance?.curso?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.nome}">
				<li class="prop">
					<span id="nome-label" class="name"><g:message code="turma.nome.label" default="Nome" /></span>
					
						<span class="value" aria-labelledby="nome-label"><g:fieldValue bean="${turmaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.periodo}">
				<li class="prop">
					<span id="periodo-label" class="name"><g:message code="turma.periodo.label" default="Periodo" /></span>
					
						<span class="value" aria-labelledby="periodo-label"><g:fieldValue bean="${turmaInstance}" field="periodo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${turmaInstance?.professor}">
				<li class="prop">
					<span id="professor-label" class="name"><g:message code="turma.professor.label" default="Professor" /></span>
					
						<span class="value" aria-labelledby="professor-label"><g:link controller="professor" action="show" id="${turmaInstance?.professor?.id}">${turmaInstance?.professor?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:turmaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${turmaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
