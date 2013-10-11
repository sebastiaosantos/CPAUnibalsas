<%@ page import="br.edu.unibalsas.siscpa.ValorRespostaAberta" %>



			<div class="control-group fieldcontain ${hasErrors(bean: valorRespostaAbertaInstance, field: 'texto', 'error')} ">
				<label for="texto" class="control-label"><g:message code="valorRespostaAberta.texto.label" default="Texto" /></label>
				<div class="controls">
					<g:textArea name="texto" cols="40" rows="5" maxlength="1200" value="${valorRespostaAbertaInstance?.texto}"/>
					<span class="help-inline">${hasErrors(bean: valorRespostaAbertaInstance, field: 'texto', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: valorRespostaAbertaInstance, field: 'resposta', 'error')} required">
				<label for="resposta" class="control-label"><g:message code="valorRespostaAberta.resposta.label" default="Resposta" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="resposta" name="resposta.id" from="${br.edu.unibalsas.siscpa.Resposta.list()}" optionKey="id" required="" value="${valorRespostaAbertaInstance?.resposta?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: valorRespostaAbertaInstance, field: 'resposta', 'error')}</span>
				</div>
			</div>

