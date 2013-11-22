
<%@ page import="br.edu.unibalsas.siscpa.ObjetoAvaliado" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'objetoAvaliado.label', default: 'ObjetoAvaliado')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-objetoAvaliado" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${objetoAvaliadoInstance?.blocoDeQuestoes}">

					  <h4> <span id="blocoDeQuestoes-label" class="name"><g:message code="objetoAvaliado.blocoDeQuestoes.label" default="Bloco De Questoes" /></span>
					
						<span class="value" aria-labelledby="blocoDeQuestoes-label"><g:fieldValue bean="${objetoAvaliadoInstance}" field="blocoDeQuestoes"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${objetoAvaliadoInstance?.nome}">

					  <h4> <span id="nome-label" class="name"><g:message code="objetoAvaliado.nome.label" default="Nome" /></span>
					
						<span class="value" aria-labelledby="nome-label"><g:fieldValue bean="${objetoAvaliadoInstance}" field="nome"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:objetoAvaliadoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${objetoAvaliadoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
