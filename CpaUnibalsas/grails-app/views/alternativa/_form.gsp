<%@ page import="br.edu.unibalsas.siscpa.Alternativa" %>



			<div class="control-group fieldcontain ${hasErrors(bean: alternativaInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="alternativa.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textField name="descricao" value="${alternativaInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: alternativaInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

