
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoProfessor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoProfessor.label', default: 'AvaliacaoProfessor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-avaliacaoProfessor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${avaliacaoProfessorInstance?.cpa}">

					  <h4> <span id="cpa-label" class="name"><g:message code="avaliacaoProfessor.cpa.label" default="Cpa" /></span>
					
						<span class="value" aria-labelledby="cpa-label"><g:fieldValue bean="${avaliacaoProfessorInstance}" field="cpa"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoProfessorInstance?.professor}">

					  <h4> <span id="professor-label" class="name"><g:message code="avaliacaoProfessor.professor.label" default="Professor" /></span>
					
						<span class="value" aria-labelledby="professor-label"><g:fieldValue bean="${avaliacaoProfessorInstance}" field="professor"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoProfessorInstance?.respostas}">

					  <h4> <span id="respostas-label" class="name"><g:message code="avaliacaoProfessor.respostas.label" default="Respostas" /></span>
					
						<span class="value" aria-labelledby="respostas-label"><g:fieldValue bean="${avaliacaoProfessorInstance}" field="respostas"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoProfessorInstance?.tempo}">

					  <h4> <span id="tempo-label" class="name"><g:message code="avaliacaoProfessor.tempo.label" default="Tempo" /></span>
					
						<span class="value" aria-labelledby="tempo-label"><g:fieldValue bean="${avaliacaoProfessorInstance}" field="tempo"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:avaliacaoProfessorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${avaliacaoProfessorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
