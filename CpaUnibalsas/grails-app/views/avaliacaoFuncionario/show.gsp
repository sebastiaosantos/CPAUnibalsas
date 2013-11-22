
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoFuncionario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoFuncionario.label', default: 'AvaliacaoFuncionario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-avaliacaoFuncionario" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${avaliacaoFuncionarioInstance?.cpa}">

					  <h4> <span id="cpa-label" class="name"><g:message code="avaliacaoFuncionario.cpa.label" default="Cpa" /></span>
					
						<span class="value" aria-labelledby="cpa-label"><g:fieldValue bean="${avaliacaoFuncionarioInstance}" field="cpa"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoFuncionarioInstance?.departamento}">

					  <h4> <span id="departamento-label" class="name"><g:message code="avaliacaoFuncionario.departamento.label" default="Departamento" /></span>
					
						<span class="value" aria-labelledby="departamento-label"><g:fieldValue bean="${avaliacaoFuncionarioInstance}" field="departamento"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoFuncionarioInstance?.respostas}">

					  <h4> <span id="respostas-label" class="name"><g:message code="avaliacaoFuncionario.respostas.label" default="Respostas" /></span>
					
						<span class="value" aria-labelledby="respostas-label"><g:fieldValue bean="${avaliacaoFuncionarioInstance}" field="respostas"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoFuncionarioInstance?.tempo}">

					  <h4> <span id="tempo-label" class="name"><g:message code="avaliacaoFuncionario.tempo.label" default="Tempo" /></span>
					
						<span class="value" aria-labelledby="tempo-label"><g:fieldValue bean="${avaliacaoFuncionarioInstance}" field="tempo"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:avaliacaoFuncionarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${avaliacaoFuncionarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
