
<%@ page import="br.edu.unibalsas.siscpa.Resposta" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'resposta.label', default: 'Resposta')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-resposta" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${respostaInstance?.avaliacao}">

					  <h4> <span id="avaliacao-label" class="name"><g:message code="resposta.avaliacao.label" default="Avaliacao" /></span>
					
						<span class="value" aria-labelledby="avaliacao-label"><g:fieldValue bean="${respostaInstance}" field="avaliacao"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${respostaInstance?.questao}">

					  <h4> <span id="questao-label" class="name"><g:message code="resposta.questao.label" default="Questao" /></span>
					
						<span class="value" aria-labelledby="questao-label"><g:fieldValue bean="${respostaInstance}" field="questao"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${respostaInstance?.valorResposta}">

					  <h4> <span id="valorResposta-label" class="name"><g:message code="resposta.valorResposta.label" default="Valor Resposta" /></span>
					
						<span class="value" aria-labelledby="valorResposta-label"><g:fieldValue bean="${respostaInstance}" field="valorResposta"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:respostaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${respostaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
