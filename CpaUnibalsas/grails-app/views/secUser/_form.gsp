<%@ page import="br.edu.unibalsas.siscpa.SecUser" %>



			<div class="control-group fieldcontain ${hasErrors(bean: secUserInstance, field: 'username', 'error')} required">
				<label for="username" class="control-label"><g:message code="secUser.username.label" default="Username" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="username" required="" value="${secUserInstance?.username}"/>
					<span class="help-inline">${hasErrors(bean: secUserInstance, field: 'username', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: secUserInstance, field: 'password', 'error')} required">
				<label for="password" class="control-label"><g:message code="secUser.password.label" default="Password" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="password" required="" value="${secUserInstance?.password}"/>
					<span class="help-inline">${hasErrors(bean: secUserInstance, field: 'password', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: secUserInstance, field: 'accountExpired', 'error')} ">
				<label for="accountExpired" class="control-label"><g:message code="secUser.accountExpired.label" default="Account Expired" /></label>
				<div class="controls">
					<bs:checkBox name="accountExpired" value="${secUserInstance?.accountExpired}" />
					<span class="help-inline">${hasErrors(bean: secUserInstance, field: 'accountExpired', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: secUserInstance, field: 'accountLocked', 'error')} ">
				<label for="accountLocked" class="control-label"><g:message code="secUser.accountLocked.label" default="Account Locked" /></label>
				<div class="controls">
					<bs:checkBox name="accountLocked" value="${secUserInstance?.accountLocked}" />
					<span class="help-inline">${hasErrors(bean: secUserInstance, field: 'accountLocked', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: secUserInstance, field: 'enabled', 'error')} ">
				<label for="enabled" class="control-label"><g:message code="secUser.enabled.label" default="Enabled" /></label>
				<div class="controls">
					<bs:checkBox name="enabled" value="${secUserInstance?.enabled}" />
					<span class="help-inline">${hasErrors(bean: secUserInstance, field: 'enabled', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: secUserInstance, field: 'passwordExpired', 'error')} ">
				<label for="passwordExpired" class="control-label"><g:message code="secUser.passwordExpired.label" default="Password Expired" /></label>
				<div class="controls">
					<bs:checkBox name="passwordExpired" value="${secUserInstance?.passwordExpired}" />
					<span class="help-inline">${hasErrors(bean: secUserInstance, field: 'passwordExpired', 'error')}</span>
				</div>
			</div>

