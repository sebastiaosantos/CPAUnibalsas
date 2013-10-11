<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestaoCategoria" %>



			<div class="control-group fieldcontain ${hasErrors(bean: tipoDeQuestaoCategoriaInstance, field: 'categorias', 'error')} ">
				<label for="categorias" class="control-label"><g:message code="tipoDeQuestaoCategoria.categorias.label" default="Categorias" /></label>
				<div class="controls">
					
					<span class="help-inline">${hasErrors(bean: tipoDeQuestaoCategoriaInstance, field: 'categorias', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: tipoDeQuestaoCategoriaInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="tipoDeQuestaoCategoria.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textField name="descricao" value="${tipoDeQuestaoCategoriaInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: tipoDeQuestaoCategoriaInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

