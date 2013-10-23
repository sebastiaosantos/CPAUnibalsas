
<!DOCTYPE html>

<html>

<head>
<title><g:message code="default.welcome.title"
		args="[meta(name:'app.name')]" /></title>

<r:require modules="questao" />



<style type="text/css">


#name {
 size: 450px;
 padding: 5px 18px;
   text-align: left;
 
 }
 
 #new-todo{
 
  
  size: 450px;
 padding: 5px 18px;
   text-align: left;
 
 }
 
 .test{
 
 padding: 6px 5px;
 }
 
 
}

</style>

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
                        <tr class="prop">
                                <td valign="top" class="name">
                 
                                    <label for="name">Título da pergunta</label>
                                    
                                </td>
                                <td valign="top">
                                     <g:textField name="name" id="name" placeholder="Pergunta sem título"  >  </g:textField>
                                   <br>
                                    <g:select name="select" id="tipoQuestao" from="${[' ', 'Múltipla escolha', 'Texto', 'Caixa de seleção']}" />
                                   <br>
                                    
                                    <tr class="prop">
                                <td valign="top" class="name">
                 
 											<label for="resp">Título da resposta</label>                                    
                                </td>
                                <td valign="top">
                               
                                     <div id="multiplaEscolha" class=".hidden-print">
                                     <g:textField name="resp" id="new-todo" placeholder="Resposta sem título"  >  </g:textField>
                                      <br>
                                    
                                      	<div id="conteudo"></div>
                                      
                             		</div>
                             
                                </td>           
                            </tr> 
                           
                      
                        </tbody>
                    </table>
                </div>
        
        
        
        
    </header>

    <section id="main" style="display: none;">
     <table>
                       
                        <tr>
                              <td class="test">
      <input name="toggle-all" id="toggle-all" type="checkbox">
							  </td>
                              <td>
      <label for="toggle-all">Selecionar todos</label>
							
                               </td>           
                         </tr>    
                       
       </table>
      <ul id="todo-list"></ul>
      
    </section>

    <footer style="display: none;">
    
    <div class="todo-count"><b>1</b> item left</div>
  </footer>

  </div>
  
  
  
             
             <div class="panel panel-primary">
  <div class="panel-body">
   
   <h1>teste </h1>
   
  </div>
  <div class="panel-footer">Panel footer</div>
</div>      
  
  
  <%--<select id="my_select" name="my_select_box">

<option value="yes">yes</option>

<option value="no">no</option>

</select>
  
  
  <script>
  $('#my_select').change(function() {

   // assign the value to a variable, so you can test to see if it is working

    var selectVal = $('#my_select :selected').val();

    alert(selectVal);

});
 </script>  --%>
  
  
  

<script type="text/template" id="item-template">

 <div class="view">
       <table>
                       
                        <tr>
                              <td class="test">
 							 <input name="test" class="toggle" type="checkbox" {{ done ? 'checked="checked"' : '' }} />
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

</body>

</html>
