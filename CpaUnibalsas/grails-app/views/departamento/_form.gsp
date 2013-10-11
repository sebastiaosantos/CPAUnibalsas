<%@ page import="br.edu.unibalsas.siscpa.Departamento" %>



			<div class="control-group fieldcontain ${hasErrors(bean: departamentoInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="departamento.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textField name="descricao" value="${departamentoInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: departamentoInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

