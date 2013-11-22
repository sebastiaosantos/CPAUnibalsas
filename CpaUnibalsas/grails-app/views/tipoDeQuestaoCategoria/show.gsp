
<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestaoCategoria" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'tipoDeQuestaoCategoria.label', default: 'TipoDeQuestaoCategoria')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="show-tipoDeQuestaoCategoria" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			
				
			<div class="row">
				<div class="col-xs-6 col-md-6">

				<g:if test="${tipoDeQuestaoCategoriaInstance?.categorias}">

					  <h4> <span id="categorias-label" class="name"><g:message code="tipoDeQuestaoCategoria.categorias.label" default="Categorias" /></span>
					
						<span class="value" aria-labelledby="categorias-label"><g:fieldValue bean="${tipoDeQuestaoCategoriaInstance}" field="categorias"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				<g:if test="${tipoDeQuestaoCategoriaInstance?.descricao}">

					  <h4> <span id="descricao-label" class="name"><g:message code="tipoDeQuestaoCategoria.descricao.label" default="Descricao" /></span>
					
						<span class="value" aria-labelledby="descricao-label"><g:fieldValue bean="${tipoDeQuestaoCategoriaInstance}" field="descricao"/></span>
						
						<br/><br/>
				
						  </h4>
						  </g:if>
						  
				</div>
				
			</div>
			
			
			
			
			<g:form url="[resource:tipoDeQuestaoCategoriaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-default btn-lg" action="edit" resource="${tipoDeQuestaoCategoriaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
