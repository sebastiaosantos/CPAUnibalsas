
<%@ page import="br.edu.unibalsas.siscpa.Avaliador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliador.label', default: 'Avaliador')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-avaliador" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${avaliadorInstance?.nome}">

					  <h4> <span id="nome-label" class="name"><g:message code="avaliador.nome.label" default="Nome" /></span>
					
						<span class="value" aria-labelledby="nome-label"><g:fieldValue bean="${avaliadorInstance}" field="nome"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:avaliadorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${avaliadorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
