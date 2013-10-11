<%@ page import="br.edu.unibalsas.siscpa.AvaliacaoComunidadeExterna" %>



			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoComunidadeExternaInstance, field: 'cpa', 'error')} required">
				<label for="cpa" class="control-label"><g:message code="avaliacaoComunidadeExterna.cpa.label" default="Cpa" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="cpa" name="cpa.id" from="${br.edu.unibalsas.siscpa.CPA.list()}" optionKey="id" required="" value="${avaliacaoComunidadeExternaInstance?.cpa?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoComunidadeExternaInstance, field: 'cpa', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoComunidadeExternaInstance, field: 'respostas', 'error')} ">
				<label for="respostas" class="control-label"><g:message code="avaliacaoComunidadeExterna.respostas.label" default="Respostas" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${avaliacaoComunidadeExternaInstance?.respostas?}" var="r">
    <li><g:link controller="resposta" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="resposta" action="create" params="['avaliacaoComunidadeExterna.id': avaliacaoComunidadeExternaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'resposta.label', default: 'Resposta')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: avaliacaoComunidadeExternaInstance, field: 'respostas', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: avaliacaoComunidadeExternaInstance, field: 'tempo', 'error')} required">
				<label for="tempo" class="control-label"><g:message code="avaliacaoComunidadeExterna.tempo.label" default="Tempo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="tempo" required="" value="${avaliacaoComunidadeExternaInstance.tempo}"/>
					<span class="help-inline">${hasErrors(bean: avaliacaoComunidadeExternaInstance, field: 'tempo', 'error')}</span>
				</div>
			</div>

