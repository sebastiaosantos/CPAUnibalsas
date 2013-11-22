
<%@ page import="br.edu.unibalsas.siscpa.Turma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'turma.label', default: 'Turma')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-turma" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${turmaInstance?.codigo}">

					  <h4> <span id="codigo-label" class="name"><g:message code="turma.codigo.label" default="Codigo" /></span>
					
						<span class="value" aria-labelledby="codigo-label"><g:fieldValue bean="${turmaInstance}" field="codigo"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${turmaInstance?.curso}">

					  <h4> <span id="curso-label" class="name"><g:message code="turma.curso.label" default="Curso" /></span>
					
						<span class="value" aria-labelledby="curso-label"><g:fieldValue bean="${turmaInstance}" field="curso"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${turmaInstance?.nome}">

					  <h4> <span id="nome-label" class="name"><g:message code="turma.nome.label" default="Nome" /></span>
					
						<span class="value" aria-labelledby="nome-label"><g:fieldValue bean="${turmaInstance}" field="nome"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${turmaInstance?.periodo}">

					  <h4> <span id="periodo-label" class="name"><g:message code="turma.periodo.label" default="Periodo" /></span>
					
						<span class="value" aria-labelledby="periodo-label"><g:fieldValue bean="${turmaInstance}" field="periodo"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${turmaInstance?.professor}">

					  <h4> <span id="professor-label" class="name"><g:message code="turma.professor.label" default="Professor" /></span>
					
						<span class="value" aria-labelledby="professor-label"><g:fieldValue bean="${turmaInstance}" field="professor"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:turmaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${turmaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
