
<%@ page import="br.edu.unibalsas.siscpa.SecUserSecRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'secUserSecRole.label', default: 'SecUserSecRole')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-secUserSecRole" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="table secUserSecRole">
			
				<g:if test="${secUserSecRoleInstance?.secRole}">
				<li class="prop">
					<span id="secRole-label" class="name"><g:message code="secUserSecRole.secRole.label" default="Sec Role" /></span>
					
						<span class="value" aria-labelledby="secRole-label"><g:link controller="secRole" action="show" id="${secUserSecRoleInstance?.secRole?.id}">${secUserSecRoleInstance?.secRole?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${secUserSecRoleInstance?.secUser}">
				<li class="prop">
					<span id="secUser-label" class="name"><g:message code="secUserSecRole.secUser.label" default="Sec User" /></span>
					
						<span class="value" aria-labelledby="secUser-label"><g:link controller="secUser" action="show" id="${secUserSecRoleInstance?.secUser?.id}">${secUserSecRoleInstance?.secUser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:secUserSecRoleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${secUserSecRoleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
