<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoProfessor" %>



			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoProfessorInstance, field: 'cpa', 'error')} required">
				<label for="cpa" class="control-label"><g:message code="avaliacaoProfessor.cpa.label" default="Cpa" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="cpa" name="cpa.id" from="${br.edu.unibalsas.siscpa.CPA.list()}" optionKey="id" required="" value="${avaliacaoProfessorInstance?.cpa?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoProfessorInstance, field: 'cpa', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoProfessorInstance, field: 'professor', 'error')} required">
				<label for="professor" class="control-label"><g:message code="avaliacaoProfessor.professor.label" default="Professor" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="professor" name="professor.id" from="${br.edu.unibalsas.siscpa.Professor.list()}" optionKey="id" required="" value="${avaliacaoProfessorInstance?.professor?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoProfessorInstance, field: 'professor', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoProfessorInstance, field: 'respostas', 'error')} ">
				<label for="respostas" class="control-label"><g:message code="avaliacaoProfessor.respostas.label" default="Respostas" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${avaliacaoProfessorInstance?.respostas?}" var="r">
    <li><g:link controller="resposta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resposta" action="create" params="['avaliacaoProfessor.id': avaliacaoProfessorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resposta.label', default: 'Resposta')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: avaliacaoProfessorInstance, field: 'respostas', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoProfessorInstance, field: 'tempo', 'error')} required">
				<label for="tempo" class="control-label"><g:message code="avaliacaoProfessor.tempo.label" default="Tempo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="tempo" required="" value="${avaliacaoProfessorInstance.tempo}"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoProfessorInstance, field: 'tempo', 'error')}</span>
				</div>
			</div>

