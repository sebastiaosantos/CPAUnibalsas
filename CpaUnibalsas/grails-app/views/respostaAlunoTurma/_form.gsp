<%@ page import="br.edu.unibalsas.siscpa.RespostaAlunoTurma" %>



			<div class="control-group fieldcontain ${hasErrors(bean: respostaAlunoTurmaInstance, field: 'avaliacao', 'error')} required">
				<label for="avaliacao" class="control-label"><g:message code="respostaAlunoTurma.avaliacao.label" default="Avaliacao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="avaliacao" name="avaliacao.id" from="${br.edu.unibalsas.siscpa.Avaliacao.list()}" optionKey="id" required="" value="${respostaAlunoTurmaInstance?.avaliacao?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: respostaAlunoTurmaInstance, field: 'avaliacao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: respostaAlunoTurmaInstance, field: 'questao', 'error')} required">
				<label for="questao" class="control-label"><g:message code="respostaAlunoTurma.questao.label" default="Questao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="questao" name="questao.id" from="${br.edu.unibalsas.siscpa.Questao.list()}" optionKey="id" required="" value="${respostaAlunoTurmaInstance?.questao?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: respostaAlunoTurmaInstance, field: 'questao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: respostaAlunoTurmaInstance, field: 'turma', 'error')} required">
				<label for="turma" class="control-label"><g:message code="respostaAlunoTurma.turma.label" default="Turma" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="turma" name="turma.id" from="${br.edu.unibalsas.siscpa.Turma.list()}" optionKey="id" required="" value="${respostaAlunoTurmaInstance?.turma?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: respostaAlunoTurmaInstance, field: 'turma', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: respostaAlunoTurmaInstance, field: 'valorResposta', 'error')} required">
				<label for="valorResposta" class="control-label"><g:message code="respostaAlunoTurma.valorResposta.label" default="Valor Resposta" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select id="valorResposta" name="valorResposta.id" from="${br.edu.unibalsas.siscpa.ValorResposta.list()}" optionKey="id" required="" value="${respostaAlunoTurmaInstance?.valorResposta?.id}" class="many-to-one"/>
					<span class="help-inline">${hasErrors(bean: respostaAlunoTurmaInstance, field: 'valorResposta', 'error')}</span>
				</div>
			</div>

