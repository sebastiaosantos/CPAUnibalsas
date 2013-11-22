<ul class="nav pull-right">
	<li class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#">
    		<i class="icon-wrench"></i>
			<g:message code="default.admin.label"/><b class="caret"></b>
		</a>
		<ul class="dropdown-menu">
			<li class="">
				<a tabindex="-1" href="#"><b>Technical Admin</b></a>
			</li>
			
				<li class="dropdown-submenu">
				<a tabindex="-1" href="#">
					<i class="icon-sitemap"></i>
					Controlles
				</a>
				<ul class="dropdown-menu">
<%--					<li class="controller"><g:link controller="home">Home Controller</g:link></li>--%>
<%--					<li class="divider"></li>--%>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.logicalPropertyName } }">
						<g:if test="${c.logicalPropertyName != 'home'}">
						<g:if test="${ c.logicalPropertyName !=  '_DemoPage'  }">
						<g:if test="${ c.logicalPropertyName !=  'dbdoc'  }">
						<g:if test="${ c.logicalPropertyName !=  'avaliacaoAluno'  }">
						<g:if test="${ c.logicalPropertyName !=  'avaliacaoAlunoPos'  }">
						<g:if test="${ c.logicalPropertyName !=  'avaliacaoComunidadeExterna'  }">
						<g:if test="${ c.logicalPropertyName !=  'avaliacao'  }">
						<g:if test="${ c.logicalPropertyName !=  'avaliacaoProfessor'  }">
						<g:if test="${ c.logicalPropertyName !=  'avaliacaoFuncionario'  }">
						<g:if test="${ c.logicalPropertyName !=  'codigo'  }">
						<g:if test="${ c.logicalPropertyName !=  'resposta'  }">
						<g:if test="${ c.logicalPropertyName !=  'respostaAlunoTurma'  }">
						<g:if test="${ c.logicalPropertyName !=  'seed'  }">
						<g:if test="${ c.logicalPropertyName !=  'valorRespostaAberta'  }">
						<g:if test="${ c.logicalPropertyName !=  'valorResposta'  }">
						<g:if test="${ c.logicalPropertyName !=  'valorRespostaInteiro'  }">
						
						
						
						
	
						
						
					

				<li style="font-size: 14px;" class="controller"><g:link controller="${c.logicalPropertyName}"><g:message code="${c.logicalPropertyName}.label" default="${c.logicalPropertyName.capitalize()}"/>
</g:link></li>
						</g:if>
						</g:if>
						</g:if>
						</g:if>
						</g:if>
						</g:if> 
						</g:if> </g:if> </g:if> </g:if>
						</g:if> </g:if> </g:if> </g:if> </g:if> </g:if> 
					</g:each>
				</ul>
			</li>
			
			<g:if env="development">
			<li class="">
				<a href="${createLink(uri: '/dbconsole')}">
					<i class="icon-dashboard"></i>
					<g:message code="default.dbconsole.label"/>
				</a>
			</li>
			</g:if>
			<li class="">
				<a href="${createLink(uri: '/systeminfo')}">
					<i class="icon-info-sign"></i>
					<g:message code="default.systeminfo.label"/>
				</a>
			</li>
		
		</ul>
	</li>
</ul>
