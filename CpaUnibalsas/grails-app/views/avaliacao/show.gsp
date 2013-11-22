
<%@ page import="br.edu.unibalsas.siscpa.Avaliacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacao.label', default: 'Avaliacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-avaliacao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${avaliacaoInstance?.cpa}">

					  <h4> <span id="cpa-label" class="name"><g:message code="avaliacao.cpa.label" default="Cpa" /></span>
					
						<span class="value" aria-labelledby="cpa-label"><g:fieldValue bean="${avaliacaoInstance}" field="cpa"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoInstance?.respostas}">

					  <h4> <span id="respostas-label" class="name"><g:message code="avaliacao.respostas.label" default="Respostas" /></span>
					
						<span class="value" aria-labelledby="respostas-label"><g:fieldValue bean="${avaliacaoInstance}" field="respostas"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoInstance?.tempo}">

					  <h4> <span id="tempo-label" class="name"><g:message code="avaliacao.tempo.label" default="Tempo" /></span>
					
						<span class="value" aria-labelledby="tempo-label"><g:fieldValue bean="${avaliacaoInstance}" field="tempo"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:avaliacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${avaliacaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
