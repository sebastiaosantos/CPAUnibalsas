<%@ page import="br.edu.unibalsas.siscpa.Questao" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<r:require modules="questao"/>
		<jawr:script src="/i18n/messages.js"/>	
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<script>
		/*jQuery(document).ready(function() {
                var HelloView = Backbone.View.extend({
                    el: $('#questao-form'),
                    initialize: function() {
                        this.render();
                    },
                    render: function() {
                        $(this.el).append("<h1>Hello World</h1>");
                    }
                });
                var helloView = new HelloView();
            });*/

		 window.onload = function() {
             var HelloView = Backbone.View.extend({
                 el: $('#questao-form'),
                 template: Handlebars.templates.questao,
                 initialize: function() {
                     this.render();
                 },
                 render: function() {
                	 //var template = Handlebars.templates.questao
                	 var data = { users: [
                	      {username: "alan", firstName: "Alan", lastName: "Johnson", email: "alan@test.com" },
                	      {username: "allison", firstName: "Allison", lastName: "House", email: "allison@test.com" },
                	      {username: "ryan", firstName: "Ryan", lastName: "Carson", email: "ryan@test.com" }
                	    ]}; 
                	    //i18nUsername: "Usuário", i18nRealName: "Nome Real", i18nEmail: "email"};

              	     var localizedText = {i18nUsername: "Usuário", i18nRealName: "Nome Real", i18nEmail: "email"};
              	     var params = _.extend({}, data, localizedText);
              	     this.template.helper;
                	 this.$el.html( this.template(params));
                 }
             });
             var helloView = new HelloView();
             alert(eval("messages.default.button.create.label()"));
             //alert(messages.'default');
         };
        </script>
	</head>
	<body>
		<div class="row-fluid">
			
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
					
					<li class="nav-header">${entityName}</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li class="active">
							<g:link class="create" action="create">
								<i class="icon-plus icon-white"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>
			
			
			<div class="span9">

				<div class="page-header">
					<h1><g:message code="default.create.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<g:hasErrors bean="${questaoInstance}">
				<bootstrap:alert class="alert-error">
				<ul>
					<g:eachError bean="${questaoInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
					</g:eachError>
				</ul>
				</bootstrap:alert>
				</g:hasErrors>

				<fieldset>
					<g:form class="form-horizontal" action="create" >
						<fieldset>
							<%--<f:all bean="questaoInstance"/>
							--%>
							<div id="questao-form"></div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">
									<i class="icon-ok icon-white"></i>
									<g:message code="default.button.create.label" default="Create" />
								</button>
							</div>
						</fieldset>
					</g:form>
				</fieldset>
				
			</div>
			
			
		</div>
		
		<script id="entry-template" type="text/x-handlebars-template">
  template content
</script>
		

	</body>
</html>
