<%@ page import="br.edu.unibalsas.siscpa.Resposta" %>



			<div class="control-group fieldcontain ${hasErrors(bean: respostaInstance, field: 'avaliacao', 'error')} required">
				<label for="avaliacao" class="control-label"><g:message code="resposta.avaliacao.label" default="Avaliacao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="avaliacao" name="avaliacao.id" from="${br.edu.unibalsas.siscpa.Avaliacao.list()}" optionKey="id" required="" value="${respostaInstance?.avaliacao?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: respostaInstance, field: 'avaliacao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: respostaInstance, field: 'questao', 'error')} required">
				<label for="questao" class="control-label"><g:message code="resposta.questao.label" default="Questao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="questao" name="questao.id" from="${br.edu.unibalsas.siscpa.Questao.list()}" optionKey="id" required="" value="${respostaInstance?.questao?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: respostaInstance, field: 'questao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: respostaInstance, field: 'valorResposta', 'error')} required">
				<label for="valorResposta" class="control-label"><g:message code="resposta.valorResposta.label" default="Valor Resposta" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="valorResposta" name="valorResposta.id" from="${br.edu.unibalsas.siscpa.ValorResposta.list()}" optionKey="id" required="" value="${respostaInstance?.valorResposta?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: respostaInstance, field: 'valorResposta', 'error')}</span>
				</div>
			</div>

