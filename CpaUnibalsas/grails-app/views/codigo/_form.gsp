<%@ page import="br.edu.unibalsas.siscpa.Codigo" %>



			<div class="control-group fieldcontain ${hasErrors(bean: codigoInstance, field: 'texto', 'error')} ">
				<label for="texto" class="control-label"><g:message code="codigo.texto.label" default="Texto" /></label>
				<div class="controls">
					<g:textField name="texto" value="${codigoInstance?.texto}"/>
					<span class="help-inline">${hasErrors(bean: codigoInstance, field: 'texto', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: codigoInstance, field: 'avaliador', 'error')} ">
				<label for="avaliador" class="control-label"><g:message code="codigo.avaliador.label" default="Avaliador" /></label>
				<div class="controls">
					<g:textField name="avaliador" value="${codigoInstance?.avaliador}"/>
					<span class="help-inline">${hasErrors(bean: codigoInstance, field: 'avaliador', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: codigoInstance, field: 'usado', 'error')} ">
				<label for="usado" class="control-label"><g:message code="codigo.usado.label" default="Usado" /></label>
				<div class="controls">
					<bs:checkBox name="usado" value="${codigoInstance?.usado}" />
					<span class="help-inline">${hasErrors(bean: codigoInstance, field: 'usado', 'error')}</span>
				</div>
			</div>

