<%@ page import="br.edu.unibalsas.siscpa.Questao" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
					
					<li class="nav-header">${entityName}</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li class="active">
							<g:link class="create" action="create">
								<i class="icon-plus icon-white"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>
			
			<h1> Cadastro de Perguntas</h1>
			<hr  />
			
		</div>
	</body>
</html>
