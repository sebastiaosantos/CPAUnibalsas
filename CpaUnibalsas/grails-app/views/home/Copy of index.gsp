
<!DOCTYPE html>

<html>

<head>
<title><g:message code="default.welcome.title"
		args="[meta(name:'app.name')]" /></title>

<r:require modules="questao" />



<meta name="layout" content="kickstart" />
<script>

function init() {
	 
	var helloView = new HelloView();
		
		console.log(helloView.el);
}
</script>


</head>

<body>

	<%--	<button id="teste" type="button" onclick="init()"--%>
	<%--		class="btn btn-primary dropdown-toggle">Botão</button>--%>







	<div id="todoapp">

		<header>
			<div class="dialog">
				<table>
					<tbody>
						<tr class="">
							<td valign="top" class="name">
							<label for="name"><h4>Título da pergunta</h4></label>
							</td>
							<td class="col-lg-6">
							<g:textField name="name" id="name"	placeholder="Pergunta sem título">
							
								</g:textField> 
								<br>
								</td>
								</tr> 
								
								
								<tr>
								<td valign="top" name="select">
							   <label for="select"> <h4>Tipo da questão </h4></label>
						    	</td>
						    	<td class="col-lg-6">
								<g:select  name="select" id="tipoQuestao"
									from="${['' ,'Múltipla escolha', 'Texto', 'Caixa de seleção']}" />
									</td>
								
			</tr>
					</tbody>
				</table>
			</div>


			<div id="templatesQuestao">
				<div id="questaoTexto" class="hidden">
					<table>
						<tbody>
							<tr>
								<td valign="top" class="name">
								<label for="text"><h4>Título da resposta</h4></label>
								</td>
								<td class="col-lg-6">

									<div id="texto">
									
   											 <div class="input-group">
										<g:textField name="text" id="text" placeholder="Resposta de texto sem título">
										</g:textField>
										<br>
										
										</div>
									</div>

								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div id="questaoCaixaDeSelecao" class="hidden">
					<table>
						<tbody>
							<tr>
								<td valign="top" class="name">
								<label for="resp"><h4>Título da resposta</h4></label>
								</td>
								<td class="col-lg-6">

									<div id="caixaDeSelecao">
									 
   											 <div class="input-group">
     										 <span class="input-group-addon">
     											 <input type="checkbox">
     										 </span>
										<g:textField class="form-control" name="resp" id="new-todo"  placeholder="Resposta  sem título">
										</g:textField>
										  </div>
									
										<br>

									</div>

								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div id="questaoMultiplaEscolha" class="hidden">
					<table>
						<tbody>
							<tr>
								<td valign="top" class="name">
								<label for="resp"><h4>Título da resposta</h4></label>
								</td>
								<td class="col-lg-6">
									<div id="multiplaEscolha">
	
   											 <div class="input-group">
     										 <span class="input-group-addon">
     											 <input type="radio">
     										 </span>
										<g:textField  class="form-control" name="resp" id="new-todo" placeholder="Resposta  sem título">
										</g:textField>
										<br>
									 </div> </div>
									

								</td>
							</tr>
						</tbody>
					</table>
				</div>

			</div>


		</header>

		<section id="main" style="display: none;">
			<table>

				<tr>
					<td class="test"><input name="toggle-all" id="toggle-all"
						type="checkbox"></td>
					<td><label for="toggle-all">Selecionar todos</label></td>
				</tr>

			</table>
			<ul id="todo-list"></ul>

		</section>

		<footer style="display: none;">

			<div class="todo-count">
				<b>1</b> item left
			</div>
		</footer>

	</div>





	<script type="text/template" id="item-template">

 <div class="view">
       <table>

                        <tr>
                              <td class="test">
	                 <span class="input-group-addon">

 							 <input name="test" class="toggle"  type="checkbox" {{ done ? 'checked="checked"' : '' }} />
</span>
							  </td>
                              <td>
 								<label  for="test">{{ title }} </label>  
								<br>
                               </td>           
                         </tr>    
                       
       </table>
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
                                        	}

                                    	    if ( selectVal==("Múltipla escolha") ){
                                        	    $("#questaoMultiplaEscolha").removeClass( "hidden");
                                        	    $("#questaoCaixaDeSelecao").addClass( "hidden");
                                        	    $("#questaoTexto").addClass( "hidden");
                                        	  

                                        	}
                                    	    if ( selectVal==("Caixa de seleção") ){
                                        	    $("#questaoCaixaDeSelecao").removeClass( "hidden");
                                        	    $("#questaoTexto").addClass( "hidden");
                                        	    $("#questaoMultiplaEscolha").addClass( "hidden");
                                        	}
                                    	//   alert(selectVal); 
                                    	
                                    	});
                                    	                                    
                                    </script>
</body>


</html>
