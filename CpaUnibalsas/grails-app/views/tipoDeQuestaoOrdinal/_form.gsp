<%@ page import="br.edu.unibalsas.siscpa.TipoDeQuestaoOrdinal" %>



			<div class="control-group fieldcontain ${hasErrors(bean: tipoDeQuestaoOrdinalInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="tipoDeQuestaoOrdinal.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textField name="descricao" value="${tipoDeQuestaoOrdinalInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: tipoDeQuestaoOrdinalInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: tipoDeQuestaoOrdinalInstance, field: 'fim', 'error')} required">
				<label for="fim" class="control-label"><g:message code="tipoDeQuestaoOrdinal.fim.label" default="Fim" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="fim" required="" value="${tipoDeQuestaoOrdinalInstance.fim}"/>
					<span class="help-inline">${hasErrors(bean: tipoDeQuestaoOrdinalInstance, field: 'fim', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: tipoDeQuestaoOrdinalInstance, field: 'inicio', 'error')} required">
				<label for="inicio" class="control-label"><g:message code="tipoDeQuestaoOrdinal.inicio.label" default="Inicio" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="inicio" required="" value="${tipoDeQuestaoOrdinalInstance.inicio}"/>
					<span class="help-inline">${hasErrors(bean: tipoDeQuestaoOrdinalInstance, field: 'inicio', 'error')}</span>
				</div>
			</div>

