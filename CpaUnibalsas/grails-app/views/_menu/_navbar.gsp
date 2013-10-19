<div id="Navbar" class="navbar navbar-fixed-top navbar-inverse">
	<div class="navbar-inner">
		<div class="container">
			<!-- .btn-navbar is used as the toggle for collapsed navbar content -->
			<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
				<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
            	<span class="icon-bar"></span>
			</a>

			<a class="brand" href="${createLink(uri: '/')}">
				<img class="logo" src="${resource(plugin: 'kickstart-with-bootstrap', dir:'kickstart/img',file:'grails.png')}" alt="${meta(name:'app.name')}" />
				${meta(name:'app.name')}
				<small> v${meta(name:'app.version')}</small>
			</a>

       		<div class="nav-collapse">
       		
       			<ul class="nav">
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">SisCPA <b class="caret"></b></a>
						<ul class="dropdown-menu">
		                    <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
		                    <li class="controller">
		                     <g:if test="${c.logicalPropertyName != 'dbdoc' && c.logicalPropertyName !=  '_DemoPage' && c.logicalPropertyName !=  'avaliacaoAluno' 
		     && c.logicalPropertyName !=  'avaliacaoAlunoPos' && c.logicalPropertyName !=  'avaliacaoComunidadeExterna' && c.logicalPropertyName !=  'avaliacao'
		     && c.logicalPropertyName !=  'avaliacaoFuncionario' && c.logicalPropertyName !=  'avaliacaoProfessor' && c.logicalPropertyName !=  'avaliador' 
			   && c.logicalPropertyName !=  'blocoDeQuestoes' && c.logicalPropertyName !=  'codigo' && c.logicalPropertyName !=  'objetoAvaliado' 
			   && c.logicalPropertyName !=  'resposta' && c.logicalPropertyName !=  'respostaAlunoTurma' && c.logicalPropertyName !=  'secRole' 
			   && c.logicalPropertyName !=  'secUser' && c.logicalPropertyName !=  'secUserSecRole' && c.logicalPropertyName !=  'seed'
			   && c.logicalPropertyName !=  'tipoDeQuestao' && c.logicalPropertyName !=  'tipoDeQuestaoCategoria' && c.logicalPropertyName !=  'tipoDeQuestaoOrdinal'
			   && c.logicalPropertyName !=  'valorResposta' && c.logicalPropertyName !=  'valorRespostaAberta' && c.logicalPropertyName !=  'valorRespostaInteiro'
			  
		   }">
		                    	<g:link controller="${c.logicalPropertyName}">
									<g:if test="${c.fullName.contains('HomeController')}">
						    		<i class="icon-home"></i>
									</g:if>
									<g:elseif test="${c.fullName.contains('Curso')}">
						    		<i class="icon-group"></i>
									</g:elseif>
									<g:elseif test="${c.fullName.contains('Departamento')}">
						    		<i class="icon-lock"></i>
									</g:elseif>
									<g:elseif test="${c.fullName.contains('Professor')}">
						    		<i class="icon-user"></i>
									</g:elseif>
									<g:elseif test="${c.fullName.contains('Questao')}">
						    		<i class="icon-pencil"></i>
									</g:elseif>
									<g:elseif test="${c.fullName.contains('Turma')}">
						    		<i class="icon-plus"></i>
									</g:elseif>
									<g:elseif test="${c.fullName.contains('CPA')}">
						    		<i class="icon-pushpin"></i>
									</g:elseif>
		                    		<g:message code="${c.logicalPropertyName}.label" default="${c.logicalPropertyName.capitalize()}"/>
		                    	</g:link>
		                    	</g:if>
		                    </li>
		                    </g:each>
						</ul>
					</li>
				</ul>

	  			<div class="pull-left">
					<%--Left-side entries--%>
	  			</div>

	  			<div class="pull-right">
					<%--Right-side entries--%>
					<%--NOTE: the following menus are in reverse order due to "pull-right" alignment (i.e., right to left)--%>
					<g:render template="/_menu/language"/>														
					<g:render template="/_menu/info"/>														
					<g:render template="/_menu/user"/><!-- NOTE: the renderDialog for the "Register" modal dialog MUST be placed outside the NavBar (at least for Bootstrap 2.1.1): see bottom of main.gsp -->
					<g:render template="/_menu/admin"/>														
<%-- 					<g:render template="/_menu/search"/> --%>
	  			</div>

			</div>
			
		</div>
	</div>
</div>
