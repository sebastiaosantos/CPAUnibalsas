<%@ page import="br.edu.unibalsas.siscpa.Questao" %>



			<div class="control-group fieldcontain ${hasErrors(bean: questaoInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="questao.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textField name="descricao" value="${questaoInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: questaoInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

