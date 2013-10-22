<!DOCTYPE html>

<html>

<head>
<title><g:message code="default.welcome.title"
		args="[meta(name:'app.name')]" /></title>

<r:require modules="questao" />


<style type="text/css">

#feedback {
  height: 80px;
  width: 160px;
} 

#name {
 size: 450px;
 padding: 5px 18px;
   text-align: left;
 
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


 









 <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name">Título da pergunta</label>
                                </td>
                                <td valign="top">
                                      <g:textField name="name"  placeholder="Pergunta sem título"  >  </g:textField>
                                      <br>
                                     <g:select name="selct" from="${['Múltipla escolha', 'Texto', 'Caixa de seleção']}" />
                                      	<div id="conteudo"></div>
                                      
                             
                             
                                </td>           
                            </tr> 
                           
                      
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
               <g:submitButton name="create" class="btn btn-default" value="${message(code: 'default.button.create.label', default: 'Create')}" />
               
                </div>
                
                
                
            </g:form>
            
         <div id="todoapp">

    <header>
      <h1>Todos</h1>
      <input id="new-todo" type="text" placeholder="What needs to be done?">
    </header>

    <section id="main" style="display: none;">
      <input id="toggle-all" type="checkbox">
      <label for="toggle-all">Mark all as complete</label>
      <ul id="todo-list"></ul>
    </section>

    <footer style="display: none;">
    
    <div class="todo-count"><b>1</b> item left</div>
  </footer>

  </div>



</body>

</html>
