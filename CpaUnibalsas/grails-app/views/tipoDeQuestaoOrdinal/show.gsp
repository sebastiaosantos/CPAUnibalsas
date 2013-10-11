
<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestaoOrdinal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'tipoDeQuestaoOrdinal.label', default: 'TipoDeQuestaoOrdinal')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-tipoDeQuestaoOrdinal" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table tipoDeQuestaoOrdinal">
			
				<g:if test="${tipoDeQuestaoOrdinalInstance?.descricao}">
				<li class="prop">
					<span id="descricao-label" class="name"><g:message code="tipoDeQuestaoOrdinal.descricao.label" default="Descricao" /></span>
					
						<span class="value" aria-labelledby="descricao-label"><g:fieldValue bean="${tipoDeQuestaoOrdinalInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tipoDeQuestaoOrdinalInstance?.fim}">
				<li class="prop">
					<span id="fim-label" class="name"><g:message code="tipoDeQuestaoOrdinal.fim.label" default="Fim" /></span>
					
						<span class="value" aria-labelledby="fim-label"><g:fieldValue bean="${tipoDeQuestaoOrdinalInstance}" field="fim"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${tipoDeQuestaoOrdinalInstance?.inicio}">
				<li class="prop">
					<span id="inicio-label" class="name"><g:message code="tipoDeQuestaoOrdinal.inicio.label" default="Inicio" /></span>
					
						<span class="value" aria-labelledby="inicio-label"><g:fieldValue bean="${tipoDeQuestaoOrdinalInstance}" field="inicio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:tipoDeQuestaoOrdinalInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${tipoDeQuestaoOrdinalInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
