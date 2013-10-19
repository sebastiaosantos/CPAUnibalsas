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
 size: 300px;
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
                                    <label for="name">Name:</label>
                                </td>
                                <td valign="top">
                                      <g:textField name="name"  placeholder="Digite sua pergunta"  >  </g:textField>
                                </td>
                            </tr> 
                      
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>


	<div id="conteudo"></div>

</body>

</html>
