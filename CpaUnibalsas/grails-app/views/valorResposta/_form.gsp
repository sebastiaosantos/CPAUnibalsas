<%@ page import="br.edu.unibalsas.siscpa.ValorResposta" %>



			<div class="control-group fieldcontain ${hasErrors(bean: valorRespostaInstance, field: 'resposta', 'error')} required">
				<label for="resposta" class="control-label"><g:message code="valorResposta.resposta.label" default="Resposta" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="resposta" name="resposta.id" from="${br.edu.unibalsas.siscpa.Resposta.list()}" optionKey="id" required="" value="${valorRespostaInstance?.resposta?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: valorRespostaInstance, field: 'resposta', 'error')}</span>
				</div>
			</div>

