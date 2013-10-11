<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestaoOrdinal" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'tipoDeQuestaoOrdinal.label', default: 'TipoDeQuestaoOrdinal')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	
	
		
		<div id="edit-tipoDeQuestaoOrdinal" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${tipoDeQuestaoOrdinalInstance}">
			<ul class="alert alert-error" role="alert">
				<g:eachError bean="${tipoDeQuestaoOrdinalInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:tipoDeQuestaoOrdinalInstance, action:'update']" method="PUT"  class="form-horizontal" >
				<g:hiddenField name="version" value="${tipoDeQuestaoOrdinalInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="form-actions">
					<g:actionSubmit class="btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
