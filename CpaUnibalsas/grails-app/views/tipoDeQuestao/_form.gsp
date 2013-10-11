<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestao" %>



			<div class="control-group fieldcontain ${hasErrors(bean: tipoDeQuestaoInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="tipoDeQuestao.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textField name="descricao" value="${tipoDeQuestaoInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: tipoDeQuestaoInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

