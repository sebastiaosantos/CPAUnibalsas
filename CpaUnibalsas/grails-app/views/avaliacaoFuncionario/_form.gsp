<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoFuncionario" %>



			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoFuncionarioInstance, field: 'cpa', 'error')} required">
				<label for="cpa" class="control-label"><g:message code="avaliacaoFuncionario.cpa.label" default="Cpa" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="cpa" name="cpa.id" from="${br.edu.unibalsas.siscpa.CPA.list()}" optionKey="id" required="" value="${avaliacaoFuncionarioInstance?.cpa?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoFuncionarioInstance, field: 'cpa', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoFuncionarioInstance, field: 'departamento', 'error')} required">
				<label for="departamento" class="control-label"><g:message code="avaliacaoFuncionario.departamento.label" default="Departamento" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="departamento" name="departamento.id" from="${br.edu.unibalsas.siscpa.Departamento.list()}" optionKey="id" required="" value="${avaliacaoFuncionarioInstance?.departamento?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoFuncionarioInstance, field: 'departamento', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoFuncionarioInstance, field: 'respostas', 'error')} ">
				<label for="respostas" class="control-label"><g:message code="avaliacaoFuncionario.respostas.label" default="Respostas" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${avaliacaoFuncionarioInstance?.respostas?}" var="r">
    <li><g:link controller="resposta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resposta" action="create" params="['avaliacaoFuncionario.id': avaliacaoFuncionarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resposta.label', default: 'Resposta')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: avaliacaoFuncionarioInstance, field: 'respostas', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoFuncionarioInstance, field: 'tempo', 'error')} required">
				<label for="tempo" class="control-label"><g:message code="avaliacaoFuncionario.tempo.label" default="Tempo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="tempo" required="" value="${avaliacaoFuncionarioInstance.tempo}"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoFuncionarioInstance, field: 'tempo', 'error')}</span>
				</div>
			</div>

