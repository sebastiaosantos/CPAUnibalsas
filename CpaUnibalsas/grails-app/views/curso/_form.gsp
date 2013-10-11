<%@ page import="br.edu.unibalsas.siscpa.Curso" %>



			<div class="control-group fieldcontain ${hasErrors(bean: cursoInstance, field: 'tipo', 'error')} ">
				<label for="tipo" class="control-label"><g:message code="curso.tipo.label" default="Tipo" /></label>
				<div class="controls">
					<g:select name="tipo" from="${cursoInstance.constraints.tipo.inList}" value="${cursoInstance?.tipo}" valueMessagePrefix="curso.tipo" noSelection="['': '']"/>
					<span class="help-inline">${hasErrors(bean: cursoInstance, field: 'tipo', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: cursoInstance, field: 'nome', 'error')} ">
				<label for="nome" class="control-label"><g:message code="curso.nome.label" default="Nome" /></label>
				<div class="controls">
					<g:textField name="nome" value="${cursoInstance?.nome}"/>
					<span class="help-inline">${hasErrors(bean: cursoInstance, field: 'nome', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: cursoInstance, field: 'turmas', 'error')} ">
				<label for="turmas" class="control-label"><g:message code="curso.turmas.label" default="Turmas" /></label>
				<div class="controls">
					
<ul class="one-to-many">
<g:each in="${cursoInstance?.turmas?}" var="t">
    <li><g:link controller="turma" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="turma" action="create" params="['curso.id': cursoInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'turma.label', default: 'Turma')])}</g:link>
</li>
</ul>

					<span class="help-inline">${hasErrors(bean: cursoInstance, field: 'turmas', 'error')}</span>
				</div>
			</div>

