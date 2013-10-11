<%@ page import="br.edu.unibalsas.siscpa.Professor" %>



			<div class="control-group fieldcontain ${hasErrors(bean: professorInstance, field: 'nome', 'error')} ">
				<label for="nome" class="control-label"><g:message code="professor.nome.label" default="Nome" /></label>
				<div class="controls">
					<g:textField name="nome" value="${professorInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: professorInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

