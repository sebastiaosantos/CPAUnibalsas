
<%@ page import="br.edu.unibalsas.siscpa.RespostaAlunoTurma" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'respostaAlunoTurma.label', default: 'RespostaAlunoTurma')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="list-respostaAlunoTurma" class="content scaffold-list" role="kickstart">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		<section id="list-respostaAlunoTurma" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<th><g:message code="respostaAlunoTurma.avaliacao.label" default="Avaliacao" /></th>
			
				<th><g:message code="respostaAlunoTurma.questao.label" default="Questao" /></th>
			
				<th><g:message code="respostaAlunoTurma.turma.label" default="Turma" /></th>
			
				<th><g:message code="respostaAlunoTurma.valorResposta.label" default="Valor Resposta" /></th>
			
			</tr>
			
			
			
			
		</thead>
		<tbody>
		<g:each in="${respostaAlunoTurmaInstanceList}" status="i" var="respostaAlunoTurmaInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${respostaAlunoTurmaInstance.id}">${fieldValue(bean: respostaAlunoTurmaInstance, field: "avaliacao")}</g:link></td>
			
				<td>${fieldValue(bean: respostaAlunoTurmaInstance, field: "questao")}</td>
			
				<td>${fieldValue(bean: respostaAlunoTurmaInstance, field: "turma")}</td>
			
				<td>${fieldValue(bean: respostaAlunoTurmaInstance, field: "valorResposta")}</td>
			
			</tr>
						
		</g:each>
		</tbody>
	</table>
			<div class="pagination">
				<g:paginate total="${respostaAlunoTurmaInstanceCount ?: 0}" />
			</div>
			</section>
		</div>
	</body>
</html>
