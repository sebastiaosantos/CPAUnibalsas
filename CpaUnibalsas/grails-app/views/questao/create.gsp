<%@ page import="br.edu.unibalsas.siscpa.Questao" %>
<!doctype html>
<html>
	<head>
	<!--  ################################################################################################### -->
	<!-- #################################################################################################### -->
	
	<script language="JavaScript" type="text/javascript">   
var iCount = 1;
var iCampos = 1;
var hidden1; 
var iCamposTotal = 7; 

//Função que adiciona os radioButtons e os campos;
function addInput() {   
if (iCampos <= iCamposTotal) {
 	hidden1 = document.getElementById("hidden1");
 	
	//Criando uma variável que armazenará as informações da linha que será criada.
	var texto = "<div id='linha"+iCount+"'><input type='radio' name='radioGroup' id='radioGroup"+iCount+"' value='Opção "+iCount +"'> <input type='text' name='pergunta value='' > <input type='button' value='Apagar campo' onClick='removeInput(\"linha"+iCount+"\")'></div>";	  
	
	//Capturando a div principal, na qual os novos divs serão inseridos:
	var camposTexto = document.getElementById('camposTexto');   
	camposTexto.innerHTML = camposTexto.innerHTML+texto;
  
		if (hidden1.value == "") {
			document.getElementById("hidden1").value = iCount;
		}else{
			document.getElementById("hidden1").value += ","+iCount;
		}
iCount++;
iCampos++;
}   
}
   
//Função que remove os campos;
function removeInput(e) {
   var pai = document.getElementById('camposTexto');
   var filho = document.getElementById(e);
   hidden1 = document.getElementById("hidden1");
   var campoValor = document.getElementById("radioGroup"+e.substring(5)).value;
   var lastNumber = hidden1.value.substring(hidden1.value.lastIndexOf(",")+1);

   if(confirm("O campo será excluído permanentemente!\n\nDeseja prosseguir?")){
		var removido = pai.removeChild(filho);
		//Removendo o valor de hidden1:
		if (e.substring(5) == hidden1.value) {
			hidden1.value = hidden1.value.replace(e.substring(5),"");
		}else if(e.substring(5) == lastNumber) {
			hidden1.value = hidden1.value.replace(","+e.substring(5),"");
		}else{
			hidden1.value = hidden1.value.replace(e.substring(5)+",","");		
		}
	iCampos--;
	}
}

</script> 
	
	<!-- ################################################################################################################## -->
	<!-- ################################################################################################################## -->
   
		<meta name="layout" content="bootstrap">
		
		<g:set var="entityName" value="${message(code: 'questao.label', default: 'Questao')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
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
			
			
<form name="form">
<fieldset>
				<legend>Cadastro de Pergunta</legend>
			
				<p>
				Título da pergunta	<input id="nome" type="text" name="nome"  />
				</p>
			     Tipo de pergunta <select name="tips" id="tips">
                   <option value="1">Selecione</option>
                   <option value="2">Multipla Escolha</option>
                   <option value="3">Sim/Não</option>
                   <option value="3">Texto</option>
                      </select>
				<div id="camposTexto"></div>
				<form  name="form_radioButton" id="form_radioButton" action="">  
                <input type="button" value="Cria nova opção" name="add_radioButton" id="add_radioButton" onClick="addInput();"> 
                <br><input type="hidden" name="hidden1" id="hidden1" value="">
				</form>
				</div>
				
				</fieldset>

</form>  
			 		
			
		</div>
	</body>
</html>
