
<%@ page import="br.edu.unibalsas.siscpa.Questao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-questao" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			
			<%--<ol class="table questao">
			
				<g:if test="${questaoInstance?.descricao}">
				<li class="prop">
				
				
				
					    <span id="descricao-label" class="name"><g:message code="questao.descricao.label" default="Descricao" /></span>
					
						<span class="value" aria-labelledby="descricao-label"><g:fieldValue bean="${questaoInstance}" field="descricao"/></span>
						<br/>
						
						<span id="ordem-label" class="name"><g:message code="questao.ordem.label" default="Ordem" /></span>
					
						<span class="value" aria-labelledby="ordem-label"><g:fieldValue bean="${questaoInstance}" field="ordem"/></span>
						
						<br/>
						<span id="blocoDeQuestoes-label" class="name"><g:message code="questao.blocoDeQuestoes.label" default="Bloco de Questões" /></span>
					
						<span class="value" aria-labelledby="blocoDeQuestoes-label"><g:fieldValue bean="${questaoInstance}" field="blocoDeQuestoes"/></span>
						
						<br/>
						<span id="tipo-label" class="name"><g:message code="questao.tipo.label" default="Tipo de Questões" /></span>
					
						<span class="value" aria-labelledby="tipo-label"><g:fieldValue bean="${questaoInstance}" field="tipo"/></span>
						
						<br/>
						<span id="alternativas-label" class="name"><g:message code="questao.alternativas.label" default="Alternativas" /></span>
					
						<span class="value" aria-labelledby="alternativas-label"><g:fieldValue bean="${questaoInstance}" field="alternativas"/></span>
					
				</li>
				</g:if>
				
			
			</ol>
			
			--%>
			<div class="row">
				<div class="col-xs-6 col-md-6">

					
					  <h4> <span id="descricao-label" class="name"><g:message code="questao.descricao.label" default="Descricao" /></span>
					
						<span class="value" aria-labelledby="descricao-label"><g:fieldValue bean="${questaoInstance}" field="descricao"/></span>
						
						
						
						<br/><br/>
						<span id="ordem-label" class="name"><g:message code="questao.ordem.label" default="Ordem" /></span>
					
						<span class="value" aria-labelledby="ordem-label"><g:fieldValue bean="${questaoInstance}" field="ordem"/></span>
						<br/><br/>
						
						<span id="blocoDeQuestoes-label" class="name"><g:message code="questao.blocoDeQuestoes.label" default="Bloco de Questões" /></span>
					
						<span class="value" aria-labelledby="blocoDeQuestoes-label"><g:fieldValue bean="${questaoInstance}" field="blocoDeQuestoes"/></span>
						
						<br/><br/>
						<span id="tipo-label" class="name"><g:message code="questao.tipo.label" default="Tipo de Questões" /></span>
					
						<span class="value" aria-labelledby="tipo-label"><g:fieldValue bean="${questaoInstance}" field="tipo"/></span>
						
						<br/><br/>
						
				
				             
 							
 						<%--<span id="alternativas-label" class="name"><g:message code="questao.alternativas.label" default="Alternativas" /></span>
					
						<span class="value" aria-labelledby="alternativas-label"><g:fieldValue bean="${questaoInstance}" field="alternativas"/></span>
				
						--%>
						<g:if test="${questaoInstance.alternativas != null  && questaoInstance.alternativas.size() > 0}">
						<span id="alternativas-label" class="name">Alternativas:</span>
						<g:each var="alternativa" in="${questaoInstance.alternativas}">
    							<h5>${alternativa}</h5>
						</g:each>
						
						</g:if>
						  </h4>

				</div>
				
			</div>
			
						
			
			
			
			<g:form url="[resource:questaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${questaoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-default btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
