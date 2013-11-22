<%@ page import="br.edu.unibalsas.siscpa.BlocoDeQuestoes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'blocoDeQuestoes.label', default: 'BlocoDeQuestoes')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
	
	
		
		<div id="edit-blocoDeQuestoes" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${blocoDeQuestoesInstance}">
			<ul class="alert alert-error" role="alert">
				<g:eachError bean="${blocoDeQuestoesInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:blocoDeQuestoesInstance, action:'update']" method="PUT"  class="form-horizontal" >
				<g:hiddenField name="version" value="${blocoDeQuestoesInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="form-actions">
					<g:actionSubmit class="btn btn-default" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
