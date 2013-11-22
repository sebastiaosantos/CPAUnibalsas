
<%@ page import="br.edu.unibalsas.siscpa.RespostaAlunoTurma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'respostaAlunoTurma.label', default: 'RespostaAlunoTurma')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-respostaAlunoTurma" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${respostaAlunoTurmaInstance?.avaliacao}">

					  <h4> <span id="avaliacao-label" class="name"><g:message code="respostaAlunoTurma.avaliacao.label" default="Avaliacao" /></span>
					
						<span class="value" aria-labelledby="avaliacao-label"><g:fieldValue bean="${respostaAlunoTurmaInstance}" field="avaliacao"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${respostaAlunoTurmaInstance?.questao}">

					  <h4> <span id="questao-label" class="name"><g:message code="respostaAlunoTurma.questao.label" default="Questao" /></span>
					
						<span class="value" aria-labelledby="questao-label"><g:fieldValue bean="${respostaAlunoTurmaInstance}" field="questao"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${respostaAlunoTurmaInstance?.turma}">

					  <h4> <span id="turma-label" class="name"><g:message code="respostaAlunoTurma.turma.label" default="Turma" /></span>
					
						<span class="value" aria-labelledby="turma-label"><g:fieldValue bean="${respostaAlunoTurmaInstance}" field="turma"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${respostaAlunoTurmaInstance?.valorResposta}">

					  <h4> <span id="valorResposta-label" class="name"><g:message code="respostaAlunoTurma.valorResposta.label" default="Valor Resposta" /></span>
					
						<span class="value" aria-labelledby="valorResposta-label"><g:fieldValue bean="${respostaAlunoTurmaInstance}" field="valorResposta"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:respostaAlunoTurmaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${respostaAlunoTurmaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
