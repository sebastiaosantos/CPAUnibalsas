
<%@ page import="br.edu.unibalsas.siscpa.Codigo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'codigo.label', default: 'Codigo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-codigo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${codigoInstance?.texto}">

					  <h4> <span id="texto-label" class="name"><g:message code="codigo.texto.label" default="Texto" /></span>
					
						<span class="value" aria-labelledby="texto-label"><g:fieldValue bean="${codigoInstance}" field="texto"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${codigoInstance?.avaliador}">

					  <h4> <span id="avaliador-label" class="name"><g:message code="codigo.avaliador.label" default="Avaliador" /></span>
					
						<span class="value" aria-labelledby="avaliador-label"><g:fieldValue bean="${codigoInstance}" field="avaliador"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${codigoInstance?.usado}">

					  <h4> <span id="usado-label" class="name"><g:message code="codigo.usado.label" default="Usado" /></span>
					
						<span class="value" aria-labelledby="usado-label"><g:fieldValue bean="${codigoInstance}" field="usado"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:codigoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${codigoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
