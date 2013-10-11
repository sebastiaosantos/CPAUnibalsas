<%@ page import="br.edu.unibalsas.siscpa.CPA" %>



			<div class="control-group fieldcontain ${hasErrors(bean: CPAInstance, field: 'descricao', 'error')} ">
				<label for="descricao" class="control-label"><g:message code="CPA.descricao.label" default="Descricao" /></label>
				<div class="controls">
					<g:textField name="descricao" value="${CPAInstance?.descricao}"/>
					<span class="help-inline">${hasErrors(bean: CPAInstance, field: 'descricao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: CPAInstance, field: 'semestre', 'error')} required">
				<label for="semestre" class="control-label"><g:message code="CPA.semestre.label" default="Semestre" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="semestre" from="${1..2}" class="range" required="" value="${fieldValue(bean: CPAInstance, field: 'semestre')}"/>
					<span class="help-inline">${hasErrors(bean: CPAInstance, field: 'semestre', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: CPAInstance, field: 'dataDeCriacao', 'error')} required">
				<label for="dataDeCriacao" class="control-label"><g:message code="CPA.dataDeCriacao.label" default="Data De Criacao" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<bs:datePicker name="dataDeCriacao" precision="day"  value="${CPAInstance?.dataDeCriacao}"  />
					<span class="help-inline">${hasErrors(bean: CPAInstance, field: 'dataDeCriacao', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: CPAInstance, field: 'ativa', 'error')} ">
				<label for="ativa" class="control-label"><g:message code="CPA.ativa.label" default="Ativa" /></label>
				<div class="controls">
					<bs:checkBox name="ativa" value="${CPAInstance?.ativa}" />
					<span class="help-inline">${hasErrors(bean: CPAInstance, field: 'ativa', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: CPAInstance, field: 'blocosDeQuestoes', 'error')} ">
				<label for="blocosDeQuestoes" class="control-label"><g:message code="CPA.blocosDeQuestoes.label" default="Blocos De Questoes" /></label>
				<div class="controls">
					<g:select name="blocosDeQuestoes" from="${br.edu.unibalsas.siscpa.BlocoDeQuestoes.list()}" multiple="multiple" optionKey="id" size="5" value="${CPAInstance?.blocosDeQuestoes*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: CPAInstance, field: 'blocosDeQuestoes', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: CPAInstance, field: 'tipoAvaliadorAtivo', 'error')} required">
				<label for="tipoAvaliadorAtivo" class="control-label"><g:message code="CPA.tipoAvaliadorAtivo.label" default="Tipo Avaliador Ativo" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="tipoAvaliadorAtivo" from="${br.edu.unibalsas.siscpa.TipoAvaliador?.values()}" keys="${br.edu.unibalsas.siscpa.TipoAvaliador.values()*.name()}" required="" value="${CPAInstance?.tipoAvaliadorAtivo?.name()}"/>
					<span class="help-inline">${hasErrors(bean: CPAInstance, field: 'tipoAvaliadorAtivo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: CPAInstance, field: 'turmas', 'error')} ">
				<label for="turmas" class="control-label"><g:message code="CPA.turmas.label" default="Turmas" /></label>
				<div class="controls">
					<g:select name="turmas" from="${br.edu.unibalsas.siscpa.Turma.list()}" multiple="multiple" optionKey="id" size="5" value="${CPAInstance?.turmas*.id}" class="many-to-many"/>
					<span class="help-inline">${hasErrors(bean: CPAInstance, field: 'turmas', 'error')}</span>
				</div>
			</div>

