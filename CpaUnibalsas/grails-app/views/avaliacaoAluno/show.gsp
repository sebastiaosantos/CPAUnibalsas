
<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoAluno" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'avaliacaoAluno.label', default: 'AvaliacaoAluno')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-avaliacaoAluno" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${avaliacaoAlunoInstance?.cpa}">

					  <h4> <span id="cpa-label" class="name"><g:message code="avaliacaoAluno.cpa.label" default="Cpa" /></span>
					
						<span class="value" aria-labelledby="cpa-label"><g:fieldValue bean="${avaliacaoAlunoInstance}" field="cpa"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoAlunoInstance?.curso}">

					  <h4> <span id="curso-label" class="name"><g:message code="avaliacaoAluno.curso.label" default="Curso" /></span>
					
						<span class="value" aria-labelledby="curso-label"><g:fieldValue bean="${avaliacaoAlunoInstance}" field="curso"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoAlunoInstance?.periodo}">

					  <h4> <span id="periodo-label" class="name"><g:message code="avaliacaoAluno.periodo.label" default="Periodo" /></span>
					
						<span class="value" aria-labelledby="periodo-label"><g:fieldValue bean="${avaliacaoAlunoInstance}" field="periodo"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoAlunoInstance?.respostas}">

					  <h4> <span id="respostas-label" class="name"><g:message code="avaliacaoAluno.respostas.label" default="Respostas" /></span>
					
						<span class="value" aria-labelledby="respostas-label"><g:fieldValue bean="${avaliacaoAlunoInstance}" field="respostas"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${avaliacaoAlunoInstance?.tempo}">

					  <h4> <span id="tempo-label" class="name"><g:message code="avaliacaoAluno.tempo.label" default="Tempo" /></span>
					
						<span class="value" aria-labelledby="tempo-label"><g:fieldValue bean="${avaliacaoAlunoInstance}" field="tempo"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:avaliacaoAlunoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${avaliacaoAlunoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
