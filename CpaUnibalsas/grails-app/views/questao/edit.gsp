<%@ page import="br.edu.unibalsas.siscpa.Questao"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="kickstart">
<g:set var="entityName"
	value="${message(code: 'questao.label', default: 'Questao')}" />
<title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>



	<div id="edit-questao" class="content scaffold-edit" role="main">
		<h1>
			<g:message code="default.edit.label" args="[entityName]" />
		</h1>
		<g:if test="${flash.message}">
			<div class="message" role="status">
				${flash.message}
			</div>
		</g:if>
		<g:hasErrors bean="${questaoInstance}">
			<ul class="alert alert-error" role="alert">
				<g:eachError bean="${questaoInstance}" var="error">
					<li
						<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
							error="${error}" /></li>
				</g:eachError>
			</ul>
		</g:hasErrors>
		<g:form url="[resource:questaoInstance, action:'update']" method="PUT"
			class="form-horizontal">
			<g:hiddenField name="version" value="${questaoInstance?.version}" />




			<div class="dialog">

				<div class="row" id="linhaTituloDaPergunta">
					<div class="col-xs-6 col-md-2">

						<label for="descricao"><h4>Título da pergunta</h4></label>

						<%--				<label for="ordem"><h4>Ordem pergunta</h4></label>--%>



					</div>
					<div class="col-xs-6" class="col-lg-6">
						<g:textField name="descricao" class="form-control"
							id="perguntaPrincipal" placeholder="Pergunta sem título"
							value="${questaoInstance?.descricao}" />



					</div>
				</div>


				<div class="row" id="linhaOrdemDaPergunta">
					<div class="col-xs-6 col-md-2">

						<label for="ordem"><h4>Ordem pergunta</h4></label>


					</div>
					<div class="col-xs-6" class="col-lg-6">

						<g:textField name="ordem" id="ordemQuestao"
							placeholder="Pergunta sem ordem"
							value="${questaoInstance?.ordem}" />


					</div>
				</div>





				<div id="templatesQuestoes">
					<div id="questaoTexto" class="hidden">

						<div class="row">
							<div class="col-xs-6 col-md-2">

								<label for="texto"><h4>Título da resposta</h4></label>
							</div>
							<div class="col-xs-6" class="col-lg-6">
								<g:textField class="form-control" name="texto" id="text"
									placeholder="Resposta de texto sem título" disabled="disabled"></g:textField>
								<br>


							</div>

						</div>

					</div>



					<div id="questaoMultiplaEscolha">

						<div class="row">
							<div class="col-xs-6 col-md-2">
								<label for="radio"><h4>Nova alternativa</h4></label>
							</div>
							<div class="col-xs-6" class="col-lg-6">

								<a class="btn btn-default" id="addAlternativasMultiplaEscolha">
									<span class="glyphicon glyphicon-plus"></span>
								</a> <br> <br>


								<div id="alternativasMultiplaEscolha">
									<g:each var="alternativa" in="${questaoInstance.alternativas}">
										<div class="row">
											<div class="col-xs-12">
												<div id="divMultiplaEscolha">
													<a class="btn btn-default " for="alternativa"
														id="removeAlternativas"> <span class="icon-remove"></span>
													</a>
													<div class="col-xs-8">


														<input type="text" class="form-control" name="alternativa.descricao"
															value="${alternativa}" />

														<g:hiddenField name="alternativa.id" value="${alternativa?.id}" />



													</div>
												</div>
											</div>
										</div>
									</g:each>

								</div>


							</div>




						</div>
					</div>

				</div>





				<div id="questaoSimNao" class="hidden">

					<div class="row">
						<div class="col-xs-6 col-md-2">
							<label for="radio"><h4>Nova alternativa</h4></label>
						</div>
						<div class="col-xs-6" class="col-lg-2">


							<div class="input-group">
								<span class="input-group-addon"> <input type="radio"
									disabled="disabled">
								</span> <input type="text" disabled="disabled" value="Sim"
									class="form-control"> <span class="input-group-addon">
									<input type="radio" disabled="disabled">

								</span> <input type="text" disabled="disabled" value="Não"
									class="form-control"> <br>

							</div>
						</div>

					</div>

				</div>





				<div id="questao1-5" class="hidden">


					<div class="row">
						<div class="col-xs-6 col-md-2">
							<label for="radio"><h4>Nova alternativa</h4></label>
						</div>

						<div class="col-xs-1">

							<h5>
								1 <input type="radio" name="myGroup" value="1"
									disabled="disabled" />
							</h5>

						</div>

						<div class="col-xs-1">

							<h5>
								2 <input type="radio" name="myGroup" value="2"
									disabled="disabled" />
							</h5>
						</div>
						<div class="col-xs-1">

							<h5>
								3 <input type="radio" name="myGroup" value="3"
									disabled="disabled" />
							</h5>
						</div>
						<div class="col-xs-1">
							<h5>
								4 <input type="radio" name="myGroup" value="4"
									disabled="disabled" />
							</h5>
						</div>
						<div class="col-xs-1">

							<h5>
								5 <input type="radio" name="myGroup" value="5"
									disabled="disabled" />
							</h5>
						</div>
					</div>

				</div>


				<script type="text/javascript" id="alternativas-template">
					$("span.icon-remove").parent(".btn.btn-default").click(
							function() {
								//alert('test');
								$(this).parent().remove();

							});

					$("#addAlternativasMultiplaEscolha")
							.click(
									function() {

										$("#alternativasMultiplaEscolha")
												.append(

														' <div class="row">  <div class="col-xs-12"> <div id="divMultiplaEscolha" > <a class="btn btn-default " for="alternativa" id="removeAlternativas"> <span class="icon-remove"></span>  </a>  <div class="col-xs-8">  <input type="text" class="form-control"  name="alternativaAdicionada" />  </div> </div> </div> </div>');
										//alert('teste');
										/*
										 $( "#removeAlternativas" ).click(function() {
										 $(this).parent().remove();
										 //alert('test');
										 });
										 */

										$("span.icon-remove").parent(
												".btn.btn-default").click(
												function() {
													//alert('test');
													$(this).parent().remove();

												});

									});
				</script>




				<fieldset class="form-actions">
					<g:actionSubmit class="btn btn-primary" action="update"
						value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
		</g:form>
	</div>
</body>
</html>
