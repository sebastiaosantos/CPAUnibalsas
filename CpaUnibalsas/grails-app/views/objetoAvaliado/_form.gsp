<%@ page import="br.edu.unibalsas.siscpa.ObjetoAvaliado" %>



			<div class="control-group fieldcontain ${hasErrors(bean: objetoAvaliadoInstance, field: 'blocoDeQuestoes', 'error')} ">
				<label for="blocoDeQuestoes" class="control-label"><g:message code="objetoAvaliado.blocoDeQuestoes.label" default="Bloco De Questoes" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${objetoAvaliadoInstance?.blocoDeQuestoes?}" var="b">
    <li><g:link controller="blocoDeQuestoes" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="blocoDeQuestoes" action="create" params="['objetoAvaliado.id': objetoAvaliadoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'blocoDeQuestoes.label', default: 'BlocoDeQuestoes')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: objetoAvaliadoInstance, field: 'blocoDeQuestoes', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: objetoAvaliadoInstance, field: 'nome', 'error')} ">
				<label for="nome" class="control-label"><g:message code="objetoAvaliado.nome.label" default="Nome" /></label>
				<div class="controls">
					<g:textField name="nome" value="${objetoAvaliadoInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: objetoAvaliadoInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

