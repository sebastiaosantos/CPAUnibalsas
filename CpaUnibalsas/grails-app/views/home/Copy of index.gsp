<html>

<head>
<title><g:message code="default.welcome.title"
		args="[meta(name:'app.name')]" /></title>

<r:require modules="backbone" />

<meta name="layout" content="kickstart" />
<script>

<%--
            $("#teste").click(function() {
                //alert("Teste");
                console.log("teste");
                var HelloView = Backbone.View.extend({
                    el: $('#conteudo'),
                    initialize: function() {
                        this.render();
                    },
                    render: function() {
                    	this.$el.html("<h1>Hello World</h1>");
                    }
                });
                var helloView = new HelloView();
                
            });
            
           --%>
            
	function init() {
		var HelloView = Backbone.View.extend({
			tagName : 'article',
			className : 'page-posts',

			template: _.template("<h2><%= title %></h2><p><%= content %></p>"),

		 template: _.template('<button type="button" class="btn btn-primary" href="#conteudo" id="add-button">Add Post</button><h2> {{ title }}</h2><p> {{ content }} </p><h3>Comments</h3><label>Username: <input id="username" type="text" /></label>'),
		    events: {
		        "dblclick" : "fullScreen",
		        "click #add-button" : "newPost",
		        "blur #username" : "searchUsername"
		    },
		 
		    newPost: function() {
		        window.alert("Adicionar novo post");
		    },
		 
		    searchUsername: function(e) {
		        window.alert("Searching username " + e.target.value);
		    },
		 
		    fullScreen: function() {
		        window.alert("Post full screen");
		    },
		

	    
			el : $('#conteudo'),
			initialize : function() {
				this.render();
			},
			render : function() {
				this.$el.html("<h1>Hello World</h1>");
				    var htmlGenerated = "<h2>Nome do Post</h2>";
				    htmlGenerated += "<p>Conteudo do post</p>";
				    this.$el.html(htmlGenerated);
			        this.$el.html(this.template({title: "Nome do Post1", content: "Conteudo do Post"}));
        this.$el.html(this.template({title: "Nome do Post", content: "Conteúdo do Post"}));

				    
				
			}

			
		});
		
		
		 
		var helloView = new HelloView();
		
		console.log(helloView.el);
	}
</script>
</head>

<body>

	<button id="teste" type="button" onclick="init()"
		class="btn btn-primary dropdown-toggle">Botão</button>

	<div id="conteudo"></div>


</body>

</html>
