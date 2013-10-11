<%@ page import="br.edu.unibalsas.siscpa.Seed" %>



			<div class="control-group fieldcontain ${hasErrors(bean: seedInstance, field: 'atual', 'error')} required">
				<label for="atual" class="control-label"><g:message code="seed.atual.label" default="Atual" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="atual" required="" value="${seedInstance.atual}"/>
					<span class="help-inline">${hasErrors(bean: seedInstance, field: 'atual', 'error')}</span>
				</div>
			</div>

