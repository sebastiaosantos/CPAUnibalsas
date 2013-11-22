
<%@ page import="br.edu.unibalsas.siscpa.BlocoDeQuestoes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'blocoDeQuestoes.label', default: 'BlocoDeQuestoes')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-blocoDeQuestoes" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${blocoDeQuestoesInstance?.descricao}">

					  <h4> <span id="descricao-label" class="name"><g:message code="blocoDeQuestoes.descricao.label" default="Descricao" /></span>
					
						<span class="value" aria-labelledby="descricao-label"><g:fieldValue bean="${blocoDeQuestoesInstance}" field="descricao"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${blocoDeQuestoesInstance?.objetoAvaliado}">

					  <h4> <span id="objetoAvaliado-label" class="name"><g:message code="blocoDeQuestoes.objetoAvaliado.label" default="Objeto Avaliado" /></span>
					
						<span class="value" aria-labelledby="objetoAvaliado-label"><g:fieldValue bean="${blocoDeQuestoesInstance}" field="objetoAvaliado"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${blocoDeQuestoesInstance?.questoes}">

					  <h4> <span id="questoes-label" class="name"><g:message code="blocoDeQuestoes.questoes.label" default="Questoes" /></span>
					
						<span class="value" aria-labelledby="questoes-label"><g:fieldValue bean="${blocoDeQuestoesInstance}" field="questoes"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:blocoDeQuestoesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${blocoDeQuestoesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
