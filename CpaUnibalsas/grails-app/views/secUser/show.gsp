
<%@ page import="br.edu.unibalsas.siscpa.SecUser" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'secUser.label', default: 'SecUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-secUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table secUser">
			
				<g:if test="${secUserInstance?.username}">
				<li class="prop">
					<span id="username-label" class="name"><g:message code="secUser.username.label" default="Username" /></span>
					
						<span class="value" aria-labelledby="username-label"><g:fieldValue bean="${secUserInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secUserInstance?.password}">
				<li class="prop">
					<span id="password-label" class="name"><g:message code="secUser.password.label" default="Password" /></span>
					
						<span class="value" aria-labelledby="password-label"><g:fieldValue bean="${secUserInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${secUserInstance?.accountExpired}">
				<li class="prop">
					<span id="accountExpired-label" class="name"><g:message code="secUser.accountExpired.label" default="Account Expired" /></span>
					
						<span class="value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${secUserInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${secUserInstance?.accountLocked}">
				<li class="prop">
					<span id="accountLocked-label" class="name"><g:message code="secUser.accountLocked.label" default="Account Locked" /></span>
					
						<span class="value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${secUserInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${secUserInstance?.enabled}">
				<li class="prop">
					<span id="enabled-label" class="name"><g:message code="secUser.enabled.label" default="Enabled" /></span>
					
						<span class="value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${secUserInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${secUserInstance?.passwordExpired}">
				<li class="prop">
					<span id="passwordExpired-label" class="name"><g:message code="secUser.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${secUserInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:secUserInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${secUserInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
