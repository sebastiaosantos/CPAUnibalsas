<%@ page import="br.edu.unibalsas.siscpa.Avaliador" %>



			<div class="control-group fieldcontain ${hasErrors(bean: avaliadorInstance, field: 'nome', 'error')} ">
				<label for="nome" class="control-label"><g:message code="avaliador.nome.label" default="Nome" /></label>
				<div class="controls">
					<g:textField name="nome" value="${avaliadorInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: avaliadorInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

