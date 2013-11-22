<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="kickstart">
<g:set var="entityName"
	value="${message(code: 'questao.label', default: 'Questao')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>

<%--<r:require modules="questao" />--%>

</head>
<body>
	<div id="create-questao" class="content scaffold-create" role="main">
		<h1>
			<g:message code="default.create.label" args="[entityName]" />
		</h1>
	</div>


	<g:if test="${flash.message}">
		<div class="message" role="status">
			${flash.message}
		</div>
	</g:if>
	<g:hasErrors bean="${questaoInstance}">
		<ul class="alert alert-danger" role="alert">
			<g:eachError bean="${questaoInstance}" var="error">
				<li
					<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
						error="${error}" /></li>
			</g:eachError>
		</ul>
	</g:hasErrors>



	<g:form class="form-horizontal" role="form"
		url="[resource:questaoInstance, action:'save']">



		<div class="form-group">
			<label for="perguntaPrincipal" class="col-sm-4 control-label">Título
					da pergunta</label>
			<div class="col-sm-8">

				<g:textField name="descricao" class="form-control"
					id="perguntaPrincipal" placeholder="Pergunta sem título" />
			</div>
		</div>
		<div class="form-group">
			<label for="ordemQuestao" class="col-sm-4 control-label">Ordem
					pergunta</label>
			<div class="col-sm-8">
				<g:textField name="ordem" id="ordemQuestao"
					placeholder="Pergunta sem ordem" />
			</div>
		</div>

		<div class="form-group">
			<label for="blocoDeQuestoes" class="col-sm-4 control-label">Bloco
					de questões</label>
			<div class="col-sm-0">

				<div
					class="control-group fieldcontain ${hasErrors(bean: questaoInstance, field: 'blocoDeQuestoes', 'error')} ">
					<div class="controls">

						<g:select name="blocoDeQuestoes"
							from="${br.edu.unibalsas.siscpa.BlocoDeQuestoes.list()}"
							optionKey="id" size="1"
							value="${questaoInstance?.blocoDeQuestoes*.id}" />
						<span class="help-inline"> ${hasErrors(bean: questaoInstance, field: 'blocoDeQuestoes', 'error')}
						</span>
					</div>
				</div>


			</div>
		</div>



		<div class="form-group">
			<label for="tipoQuestao" class="col-sm-4 control-label">Ordem
					pergunta</label>
			<div class="col-sm-0">

				<div
					class="control-group fieldcontain ${hasErrors(bean: questaoInstance, field: 'tipo', 'error')} ">
					<div class="controls">
						<g:select name="tipo" id="tipoQuestao"
							from="${br.edu.unibalsas.siscpa.TipoDeQuestao.list()}"
							optionKey="id" size="1" value="${questaoInstance?.tipo*.id}" />
						<span class="help-inline"> ${hasErrors(bean: questaoInstance, field: 'tipo', 'error')}
						</span>
					</div>
				</div>


				<%--				<g:select name="select" id="tipoQuestao"  --%>
				<%--					from="${['' ,'Múltipla escolha', 'Texto', 'Caixa de seleção', '1-5', 'SIM - NÃO']}" />--%>
				<%--				<br>--%>

			</div>
		</div>




		<div id="questaoTexto" class="hidden">
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-4 control-label">Título
						da resposta</label>
				<div class="col-sm-8">


					<g:textField class="form-control" name="texto" id="text"
						placeholder="Resposta de texto sem título" disabled="disabled"></g:textField>
					<br>
				</div>
			</div>

		</div>




  <div id="questaoCaixaDeSelecao" class="hidden">
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-4 control-label">Nova alternativa</label>
				<div class="col-sm-8">


					<a class="btn btn-default" id="addAlternativasCaixaDeSelecao">
							<span class="glyphicon glyphicon-plus"></span>
						</a> <br>
						<div id="alternativasCaixaDeSelecao">
							<br>
					<br>
				</div>
			</div>

		</div>
		
		</div>
		
		
		
		
  <div id="questaoMultiplaEscolha" class="hidden">
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-4 control-label">Nova alternativa</label>
				<div class="col-sm-8">


					<a class="btn btn-default" id="addAlternativasMultiplaEscolha">
						<span class="glyphicon glyphicon-plus"></span>
					</a> <br>


					<div id="alternativasMultiplaEscolha">
						<br>
					
				</div>
			</div>

		</div>
  </div>
  
  
  
		<div id="questaoSimNao" class="hidden">
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-4 control-label">Nova alternativa</label>
				<div class="col-sm-8">


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
			<div class="form-group">
				<label for="inputPassword3" class="col-sm-4 control-label">Nova alternativa</label>
				<div class="col-sm-8">


               <div class="col-sm-1">

					
						1 <input type="radio" name="myGroup" value="1" disabled="disabled" />
				

				</div>

               <div class="col-sm-1">

					
						2 <input type="radio" name="myGroup" value="2" disabled="disabled" />
					
				</div>
               <div class="col-sm-1">

					
						3 <input type="radio" name="myGroup" value="3" disabled="disabled" />
					
				</div>
               <div class="col-sm-1">
					
						4 <input type="radio" name="myGroup" value="4" disabled="disabled" />
					
				</div>
               <div class="col-sm-1">

					
						5 <input type="radio" name="myGroup" value="5" disabled="disabled" />
					
				</div>



				</div>
			</div>

		</div>
  
  
  
  



		<fieldset class="buttons">
			<g:submitButton name="create" class="btn btn-primary"
				value="${message(code: 'default.button.create.label', default: 'Create')}" />
		</fieldset>
	</g:form>








	<script type="text/javascript" id="alternativas-template">
			     
				$("#addAlternativasMultiplaEscolha").click(function() {

	                $("#alternativasMultiplaEscolha").append(
	    	                
	    	   ' <div class="row">  <div class="col-xs-12"> <div id="divMultiplaEscolha" > <button class="btn btn-default " for="CampoAlternativas" id="removeAlternativas"> <span class="icon-remove"></span>  </button>  <div class="col-xs-8">   <input type="text" class="form-control"  name="alternativa" />  </div> </div> </div> </div>');
     //alert('teste');
/*
	                $( "#removeAlternativas" ).click(function() {
						$(this).parent().remove();
						//alert('test');
					 });
*/

					$( "span.icon-remove" ).parent(".btn.btn-default").click(function() {
						//alert('test');
						$(this).parent().remove();
						
					 });
					
	               
	               });



				</script>

	<script type="text/javascript" id="alternativasCaixaDeSelecao-template">
			     
				$("#addAlternativasCaixaDeSelecao").click(function() {

	                $("#alternativasCaixaDeSelecao").append(
	    	                
	    	   '<div class="row">  <div class="col-xs-12">  <div id="divCaixaDeSelecao"> <button class="btn btn-default " for="CampoAlternativas" id="removeAlternativas"> <span class="icon-remove"></span></button> <div class="col-xs-8">   <input type="text" class="form-control"  name="alternativa" /> </div> </div> </div> </div>');
     //alert('teste');
/*
	                $( "#removeAlternativas" ).click(function() {
						$(this).parent().remove();
						//alert('test');
					 });
					 
					 
*/

					$( "span.icon-remove" ).parent(".btn.btn-default").click(function() {
						//alert('test');
						$(this).parent().remove();
						
					 });
					
	               
	               });



				</script>





	<script type="text/javascript">
		$('#tipoQuestao').change(function() {

			var selectVal = $('#tipoQuestao :selected').val();

			//if (selectVal == ("Texto")) {
				if (selectVal == ("2")) {
				$("#questaoTexto").removeClass("hidden");
				$("#questaoCaixaDeSelecao").addClass("hidden");
				$("#questaoMultiplaEscolha").addClass("hidden");
				$("#opcoes").addClass("hidden");
				$("#questaoSimNao").addClass("hidden");
				    $( "#alternativasMultiplaEscolha" ).empty();
				    $( "#alternativasMultiplaEscolha" ).append("<br />");
				    $( "#alternativasCaixaDeSelecao" ).empty();
				    $( "#alternativasCaixaDeSelecao" ).append("<br />");

			}

		//	if (selectVal == ("Múltipla escolha")) {
				if (selectVal == ("1")) {
				$("#questaoMultiplaEscolha").removeClass("hidden");
				$("#questaoCaixaDeSelecao").addClass("hidden");
				$("#questaoTexto").addClass("hidden");
				$("#questao1-5").addClass("hidden");
				$("#questaoSimNao").addClass("hidden");
				
				    $( "#alternativasCaixaDeSelecao" ).empty();
				    $( "#alternativasCaixaDeSelecao" ).append("<br />");
               
				
			}
		//	if (selectVal == ("Caixa de seleção")) {
				if (selectVal == ("3")) {
				$("#questaoCaixaDeSelecao").removeClass("hidden");
				$("#questaoTexto").addClass("hidden");
				$("#questaoMultiplaEscolha").addClass("hidden");
				$("#questao1-5").addClass("hidden");
				$("#questaoSimNao").addClass("hidden");
				    $( "#alternativasMultiplaEscolha" ).empty();
				    $( "#alternativasMultiplaEscolha" ).append("<br />");
				   
			}

		/*	if (selectVal == ("")) {
				$("#questaoCaixaDeSelecao").addClass("hidden");
				$("#questaoTexto").addClass("hidden");
				$("#questaoMultiplaEscolha").addClass("hidden");
				$("#questao1-5").addClass("hidden");
				$("#questaoSimNao").addClass("hidden");
				
			    $( "#alternativasMultiplaEscolha" ).empty();
			    $( "#alternativasMultiplaEscolha" ).append("<br />");
			    $( "#alternativasCaixaDeSelecao" ).empty();
			    $( "#alternativasCaixaDeSelecao" ).append("<br />");
			    
  

			}
			
			*/
			//if (selectVal == ("1-5")) {
				if (selectVal == ("4")) {
				$("#questaoCaixaDeSelecao").addClass("hidden");
				$("#questaoTexto").addClass("hidden");
				$("#questaoMultiplaEscolha").addClass("hidden");
				$("#questao1-5").removeClass("hidden");
				$("#questaoSimNao").addClass("hidden");
				
			    $( "#alternativasMultiplaEscolha" ).empty();
			    $( "#alternativasMultiplaEscolha" ).append("<br />");
			    $( "#alternativasCaixaDeSelecao" ).empty();
			    $( "#alternativasCaixaDeSelecao" ).append("<br />");
			    
  

			}
			

		//	if (selectVal == ("SIM - NÃO")) {
				if (selectVal == ("5")) {
				$("#questaoSimNao").removeClass("hidden");
				$("#questaoCaixaDeSelecao").addClass("hidden");
				$("#questaoMultiplaEscolha").addClass("hidden");
				$("#questao1-5").addClass("hidden");
				$("#questaoTexto").addClass("hidden");

				    $( "#alternativasMultiplaEscolha" ).empty();
				    $( "#alternativasMultiplaEscolha" ).append("<br />");
				    $( "#alternativasCaixaDeSelecao" ).empty();
				    $( "#alternativasCaixaDeSelecao" ).append("<br />");

			}
			
			//   alert(selectVal); 

		});
	</script>




</body>
</html>
