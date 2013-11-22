<div class="">
	<ul class="nav nav-tabs" data-role="listview" data-split-icon="gear" data-filter="true">
	
		<g:each status="i" var="c" in="${grailsApplication.controllerClasses/*.sort { it.logicalPropertyName }*/ }">
		
	
		
		   <g:if test="${c.logicalPropertyName != 'dbdoc' && c.logicalPropertyName !=  '_DemoPage' && c.logicalPropertyName !=  'avaliacaoAluno' 
		     && c.logicalPropertyName !=  'avaliacaoAlunoPos' && c.logicalPropertyName !=  'avaliacaoComunidadeExterna' && c.logicalPropertyName !=  'avaliacao'
		     && c.logicalPropertyName !=  'avaliacaoFuncionario' && c.logicalPropertyName !=  'avaliacaoProfessor' && c.logicalPropertyName !=  'avaliador' 
			   && c.logicalPropertyName !=  'blocoDeQuestoes' && c.logicalPropertyName !=  'codigo' && c.logicalPropertyName !=  'objetoAvaliado' 
			   && c.logicalPropertyName !=  'resposta' && c.logicalPropertyName !=  'respostaAlunoTurma' && c.logicalPropertyName !=  'secRole' 
			   && c.logicalPropertyName !=  'secUser' && c.logicalPropertyName !=  'secUserSecRole' && c.logicalPropertyName !=  'seed'
			   && c.logicalPropertyName !=  'tipoDeQuestao' && c.logicalPropertyName !=  'tipoDeQuestaoCategoria' && c.logicalPropertyName !=  'tipoDeQuestaoOrdinal'
			   && c.logicalPropertyName !=  'valorResposta' && c.logicalPropertyName !=  'valorRespostaAberta' && c.logicalPropertyName !=  'valorRespostaInteiro'
			  
		   }">
		     
		  
<%--		   <p> ${c.logicalPropertyName} </p>--%>
			
			<li class="controller${params.controller == c.logicalPropertyName ? " active" : ""}">
				<g:link controller="${c.logicalPropertyName}" action="index">
					<g:message code="${c.logicalPropertyName}.label" default="${c.logicalPropertyName.capitalize()}"/>
				</g:link>
			</li>
			</g:if>
		</g:each>
		
	</ul>
	
	
</div>
