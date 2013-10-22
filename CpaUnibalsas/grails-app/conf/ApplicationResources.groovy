modules = {
    application {
        resource url:'js/application.js'
    }
	
	questao {
		dependsOn 'bootstrap,backbone'
		//resource url: 'js/collections/QuestaoCollections.js'
		resource url: 'js/models/QuestaoModel.js'
		//resource url: 'js/view/QuestaoView.js'
		resource url: 'js/view/QuestaoFormViewCreate.js'
		
		
		
		resource url: 'js/collections/TodoList.js'
		resource url: 'js/models/Todo.js'
		resource url: 'js/view/TodoView.js'
		resource url: 'js/view/AppView.js'
		
		
		
		
		
		
	}
}