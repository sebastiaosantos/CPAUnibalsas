
<%@ page import="br.edu.unibalsas.siscpa.CPA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'CPA.label', default: 'CPA')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-CPA" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${CPAInstance?.descricao}">

					  <h4> <span id="descricao-label" class="name"><g:message code="CPA.descricao.label" default="Descricao" /></span>
					
						<span class="value" aria-labelledby="descricao-label"><g:fieldValue bean="${CPAInstance}" field="descricao"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${CPAInstance?.semestre}">

					  <h4> <span id="semestre-label" class="name"><g:message code="CPA.semestre.label" default="Semestre" /></span>
					
						<span class="value" aria-labelledby="semestre-label"><g:fieldValue bean="${CPAInstance}" field="semestre"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${CPAInstance?.ativa}">

					  <h4> <span id="ativa-label" class="name"><g:message code="CPA.ativa.label" default="Ativa" /></span>
					
						<span class="value" aria-labelledby="ativa-label"><g:fieldValue bean="${CPAInstance}" field="ativa"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${CPAInstance?.blocosDeQuestoes}">

					  <h4> <span id="blocosDeQuestoes-label" class="name"><g:message code="CPA.blocosDeQuestoes.label" default="Blocos De Questoes" /></span>
					
						<span class="value" aria-labelledby="blocosDeQuestoes-label"><g:fieldValue bean="${CPAInstance}" field="blocosDeQuestoes"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${CPAInstance?.dataDeCriacao}">

					  <h4> <span id="dataDeCriacao-label" class="name"><g:message code="CPA.dataDeCriacao.label" default="Data De Criacao" /></span>
					
						<span class="value" aria-labelledby="dataDeCriacao-label"><g:fieldValue bean="${CPAInstance}" field="dataDeCriacao"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${CPAInstance?.tipoAvaliadorAtivo}">

					  <h4> <span id="tipoAvaliadorAtivo-label" class="name"><g:message code="CPA.tipoAvaliadorAtivo.label" default="Tipo Avaliador Ativo" /></span>
					
						<span class="value" aria-labelledby="tipoAvaliadorAtivo-label"><g:fieldValue bean="${CPAInstance}" field="tipoAvaliadorAtivo"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${CPAInstance?.turmas}">

					  <h4> <span id="turmas-label" class="name"><g:message code="CPA.turmas.label" default="Turmas" /></span>
					
						<span class="value" aria-labelledby="turmas-label"><g:fieldValue bean="${CPAInstance}" field="turmas"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:CPAInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${CPAInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
