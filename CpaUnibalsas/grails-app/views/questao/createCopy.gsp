<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
				<div id="create-questao" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${questaoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${questaoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:questaoInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="btn btn-default" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>















<%--------------------------------------------------------------       MODIFICADO           -------------------------------%>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="kickstart">
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<r:require modules="questao" />
		
	</head>
	<body>
				<div id="create-questao" class="content scaffold-create" role="main">
			
			
			
<%--			------------------------------------------------------------%>
			
				
			
			
			<div id="todoapp">

		<header>
			<div class="dialog">
			
			    <div class="row">
  					<div class="col-xs-6 col-md-2"> 
  
  						<label for="name"><h4>Título da pergunta</h4></label>
 				  </div>
                 <div class="col-xs-6" class="col-lg-6" >
              			<g:textField name="name" id="name"	placeholder="Pergunta sem título"> </g:textField>
                 <br>
                 
                 </div>
      </div>
				
				   <div class="row">
  					<div class="col-xs-6 col-md-2""> 
  
  						<label for="select"> <h4>Tipo da questão </h4></label>
 				  </div>
                 <div class="col-xs-6" class="col-lg-6" >
              				<g:select  name="select" id="tipoQuestao"
									from="${['' ,'Múltipla escolha', 'Texto', 'Caixa de seleção']}" />
                 <br>
                 
                 </div>
      </div>
				
	 					
			</div>



			<div id="new-todo">
				<div id="questaoTexto" class="hidden">
				
				  <div class="row">
  					<div class="col-xs-6 col-md-2"> 
  
								<label for="texto"><h4>Título da resposta</h4></label>
 				  </div>
                 <div class="col-xs-6" class="col-lg-6" >
              				        <div class="input-group">
     										 <span class="input-group-addon">
     										 	
     									 <g:textField  name="texto" id="text" placeholder="Resposta de texto sem título"></g:textField>
     										 </span>					
                							 <br>
                 
                 			</div>
     					 </div>
				
	 					</div>
	 					
			</div>
					
													
				</div>

				<div id="questaoCaixaDeSelecao" class="hidden">
				
				 <div class="row">
  					<div class="col-xs-6 col-md-2""> 
  
  						<label for="resp"><h4>Título da resposta</h4></label>
 				  </div>
                 <div class="col-xs-6" class="col-lg-6" >
           			<div class="input-group">
     										 <span class="input-group-addon">
     											 <input type="checkbox">
     										 </span>
										<g:textField class="form-control" name="resp" id="new-todo"  placeholder="Resposta  sem título">
										</g:textField>
                 <br>
                 
                 
                 </div>
                 </div>
      </div>
				
												
				</div>

				<div id="questaoMultiplaEscolha" class="hidden">
				
					 <div class="row">
  					<div class="col-xs-6 col-md-2"> 
  
								<label for="radio"><h4>Título da resposta</h4></label>
 				  </div>
                 <div class="col-xs-6" class="col-lg-6" >
           			 <div class="input-group">
     										 <span class="input-group-addon">
     											 <input type="radio">
     										 </span>
										<g:textField  class="form-control" name="radio" id="new-todoo" placeholder="Resposta  sem título">
										</g:textField>
										<br>
                 
                </div>
      </div>
			
				</div>

			</div>

		</header>
		
		
		
		
		
		
		
		<div id="opcoes" class="hidden">
				<section id="main" style="display: none;">
		
<div class="panel panel-info">
	<div class="panel-heading">
          <h6 class="panel-title">Opções digitadas</h6>
        </div>
       
      
		 <div class="col-md-1 col-md-offset-0">
            <span class="input-group-addon">
               
               <label for="toggle-all"> <h5>Selecionar todos</h5></label>
           
                <input name="toggle-all" id="toggle-all" type="checkbox">  
                 </span>
           
         
       </div>
		   
              <br>
		<div class="row">
              <div class="col-md-6 col-md-offset-2">    
      <ul id="todo-list"></ul>
 
 
       </div>
      
</div>
		

		<footer style="display: none;">

			<div class="todo-count">
				<b>1</b> item left
			</div>
	
		</footer>
</div>

</section>
</div>

</div>


	<script type="text/template" id="item-template">

 <div class="view">

	<div class="row">
              <div class="col-md-1 col-md-offset-2">    
     <span class="input-group-addon">
 			 <input name="opRespostas" class="toggle"  type="checkbox" {{ done ? 'checked="checked"' : '' }} />
     </span>
       <ul id="todo-list"></ul>
<br>
   </div>
              <div class="col-md-9 col-md-offset-0"> 
   
 <label  for="opRespostas">{{ title }} </label> 
 
       </div>
      

</div>
    <a class="destroy"></a>
</div>
		
  </script>
  


	<script type="text/template" id="stats-template">
    {! if (done) { !}
      <a id="clear-completed">Remover {{ done }}  {{ done == 1 ? 'item' : 'items' }}</a>
    {! } !}
    <div class="todo-count"><b>{{ remaining }}</b> {{ remaining == 1 ? 'item' : 'items' }} left</div>
  </script>
  



		


<script type="text/javascript">
                                  
                                    $('#tipoQuestao').change(function() {
                                    	
                                    	
                                    	    var selectVal = $('#tipoQuestao :selected').val();

                                    	    if ( selectVal==("Texto") ){
                                        	    $("#questaoTexto").removeClass( "hidden");
                                        	    $("#questaoCaixaDeSelecao").addClass( "hidden");
                                        	    $("#questaoMultiplaEscolha").addClass( "hidden");
                                        	    $("#opcoes").addClass( "hidden");
                                        	    
                                        	}

                                    	    if ( selectVal==("Múltipla escolha") ){
                                        	    $("#questaoMultiplaEscolha").removeClass( "hidden");
                                        	    $("#questaoCaixaDeSelecao").addClass( "hidden");
                                        	    $("#questaoTexto").addClass( "hidden");
                                        	    $("#opcoes").removeClass( "hidden");
                                        	  

                                        	}
                                    	    if ( selectVal==("Caixa de seleção") ){
                                        	    $("#questaoCaixaDeSelecao").removeClass( "hidden");
                                        	    $("#questaoTexto").addClass( "hidden");
                                        	    $("#questaoMultiplaEscolha").addClass( "hidden");
                                        	    $("#opcoes").removeClass( "hidden");
                                        	}

                                    	    if ( selectVal==("") ){
                                        	    $("#questaoCaixaDeSelecao").addClass( "hidden");
                                        	    $("#questaoTexto").addClass( "hidden");
                                        	    $("#questaoMultiplaEscolha").addClass( "hidden");
                                        	    $("#opcoes").addClass( "hidden");
                                        	    
                                        	}
                                    	//   alert(selectVal); 
                                    	
                                    	});
                                    	                                    
                                    </script>
			
			
			
			
<%--			-----------------------------------------------------------	--%>
				
			
			
			
		</div>
	</body>
</html>




















