modules = {
    application {
        resource url:'js/application.js'
    }
	
	handlebars{
		resource url:'js/handlebars.js'
	}
	
	questao{
		dependsOn 'handlebars, backbone, jquery'
		resource url: 'js/templates/questao/questao.js', attrs: [type: 'js'], bundle:'bundle_questao'
		
	}
}