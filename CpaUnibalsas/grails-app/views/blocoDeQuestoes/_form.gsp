<%@ page import="br.edu.unibalsas.siscpa.BlocoDeQuestoes" %>



			<div class="control-group fieldcontain ${hasErrors(bean: blocoDeQuestoesInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="blocoDeQuestoes.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textField name="descricao" value="${blocoDeQuestoesInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: blocoDeQuestoesInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: blocoDeQuestoesInstance, field: 'objetoAvaliado', 'error')} required">
				<label for="objetoAvaliado" class="control-label"><g:message code="blocoDeQuestoes.objetoAvaliado.label" default="Objeto Avaliado" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="objetoAvaliado" name="objetoAvaliado.id" from="${br.edu.unibalsas.siscpa.ObjetoAvaliado.list()}" optionKey="id" required="" value="${blocoDeQuestoesInstance?.objetoAvaliado?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: blocoDeQuestoesInstance, field: 'objetoAvaliado', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: blocoDeQuestoesInstance, field: 'questoes', 'error')} ">
				<label for="questoes" class="control-label"><g:message code="blocoDeQuestoes.questoes.label" default="Questoes" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${blocoDeQuestoesInstance?.questoes?}" var="q">
    <li><g:link controller="questao" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="questao" action="create" params="['blocoDeQuestoes.id': blocoDeQuestoesInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'questao.label', default: 'Questao')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: blocoDeQuestoesInstance, field: 'questoes', 'error')}</span>
				</div>
			</div>

