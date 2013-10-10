<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
	  <r:require modules="questao"/>
	</head>
	<body>
	
	<g:submitButton id="x" name="Botao"/>
	
	<button type="button" id="a" class="btn btn-default btn-lg">
  <span class="glyphicon glyphicon-plus"></span> Botão
</button>
	<script>
	 $("#a").click(function() {

		 var form = new QuestaoFormView(); 
		 
		 });

	</script>
	
	</body>
	
</html>
