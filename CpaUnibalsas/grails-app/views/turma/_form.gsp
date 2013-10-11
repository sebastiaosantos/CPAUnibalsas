<%@ page import="br.edu.unibalsas.siscpa.Turma" %>



			<div class="control-group fieldcontain ${hasErrors(bean: turmaInstance, field: 'codigo', 'error')} ">
				<label for="codigo" class="control-label"><g:message code="turma.codigo.label" default="Codigo" /></label>
				<div class="controls">
					<g:textField name="codigo" value="${turmaInstance?.codigo}"/>
					<span class="help-inline">${hasErrors(bean: turmaInstance, field: 'codigo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: turmaInstance, field: 'curso', 'error')} required">
				<label for="curso" class="control-label"><g:message code="turma.curso.label" default="Curso" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="curso" name="curso.id" from="${br.edu.unibalsas.siscpa.Curso.list()}" optionKey="id" required="" value="${turmaInstance?.curso?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: turmaInstance, field: 'curso', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: turmaInstance, field: 'nome', 'error')} ">
				<label for="nome" class="control-label"><g:message code="turma.nome.label" default="Nome" /></label>
				<div class="controls">
					<g:textField name="nome" value="${turmaInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: turmaInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: turmaInstance, field: 'periodo', 'error')} required">
				<label for="periodo" class="control-label"><g:message code="turma.periodo.label" default="Periodo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="periodo" required="" value="${turmaInstance.periodo}"/>
					<span class="help-inline">${hasErrors(bean: turmaInstance, field: 'periodo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: turmaInstance, field: 'professor', 'error')} required">
				<label for="professor" class="control-label"><g:message code="turma.professor.label" default="Professor" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="professor" name="professor.id" from="${br.edu.unibalsas.siscpa.Professor.list()}" optionKey="id" required="" value="${turmaInstance?.professor?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: turmaInstance, field: 'professor', 'error')}</span>
				</div>
			</div>

