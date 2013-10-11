<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoAlunoPos" %>



			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'curso', 'error')} required">
				<label for="curso" class="control-label"><g:message code="avaliacaoAlunoPos.curso.label" default="Curso" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="curso" name="curso.id" from="${br.edu.unibalsas.siscpa.Curso.list()}" optionKey="id" required="" value="${avaliacaoAlunoPosInstance?.curso?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'curso', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'cpa', 'error')} required">
				<label for="cpa" class="control-label"><g:message code="avaliacaoAlunoPos.cpa.label" default="Cpa" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="cpa" name="cpa.id" from="${br.edu.unibalsas.siscpa.CPA.list()}" optionKey="id" required="" value="${avaliacaoAlunoPosInstance?.cpa?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'cpa', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'periodo', 'error')} required">
				<label for="periodo" class="control-label"><g:message code="avaliacaoAlunoPos.periodo.label" default="Periodo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="periodo" required="" value="${avaliacaoAlunoPosInstance.periodo}"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'periodo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'respostas', 'error')} ">
				<label for="respostas" class="control-label"><g:message code="avaliacaoAlunoPos.respostas.label" default="Respostas" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${avaliacaoAlunoPosInstance?.respostas?}" var="r">
    <li><g:link controller="resposta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resposta" action="create" params="['avaliacaoAlunoPos.id': avaliacaoAlunoPosInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resposta.label', default: 'Resposta')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'respostas', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'tempo', 'error')} required">
				<label for="tempo" class="control-label"><g:message code="avaliacaoAlunoPos.tempo.label" default="Tempo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="tempo" required="" value="${avaliacaoAlunoPosInstance.tempo}"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoAlunoPosInstance, field: 'tempo', 'error')}</span>
				</div>
			</div>

