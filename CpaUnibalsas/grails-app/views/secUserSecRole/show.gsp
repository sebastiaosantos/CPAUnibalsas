
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
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${secUserSecRoleInstance?.secRole}">

					  <h4> <span id="secRole-label" class="name"><g:message code="secUserSecRole.secRole.label" default="Sec Role" /></span>
					
						<span class="value" aria-labelledby="secRole-label"><g:fieldValue bean="${secUserSecRoleInstance}" field="secRole"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${secUserSecRoleInstance?.secUser}">

					  <h4> <span id="secUser-label" class="name"><g:message code="secUserSecRole.secUser.label" default="Sec User" /></span>
					
						<span class="value" aria-labelledby="secUser-label"><g:fieldValue bean="${secUserSecRoleInstance}" field="secUser"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:secUserSecRoleInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${secUserSecRoleInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
