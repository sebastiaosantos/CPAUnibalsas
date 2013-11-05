
_.templateSettings = {
			    interpolate : /\{\{(.+?)\}\}/g,
			    evaluate : /\{!(.+?)!\}/g
			};
			
			
			
			var HelloView = Backbone.View.extend({
				
				    tagName: 'form',
    className: 'page-form',
    id: 'questao-form',
    attributes: {
        action: 'questoes',
        method: 'POST'
    },



		 template: _.template('<form class="form-inline" role="form"> \
    		  <div class="form-group"> \
    		    <label class="sr-only" for="descricao">Descrição</label> \
    		    <input type="text" class="form-control" id="descricao" placeholder="Enter com a descrição"> \
    		  </div> \
    		  <button type="submit" class="btn btn-default">Adicionar</button> \
    		</form> '),
		    
		    
		    
		    
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
			initialize : function(model) {
		_.bindAll(this, 'render', 'goToIndex');

				        this.model = new QuestaoModel();
				                this.model.on("sync", this.goToIndex);


				
				this.render();
			},
			render : function() {
				//this.$el.html("<h1>Hello World</h1>");
				   // var htmlGenerated = "<h2>Nome do Post</h2>";
				 //   htmlGenerated += "<p>Conteudo do post</p>";
				 // this.$el.html(htmlGenerated);
				 //   this.$el.html(this.template({title: "Nome do Post", content: "Conte�do do Post"}));
				 
				 this.$el.append(this.template(this.model.toJSON()));

                     this.descricaoInput = this.$el.find('#descricao');
		        		 
				 
},

			
			
			 goToIndex: function() {
        window.location = '/CpaUnibalsas';
    }
		});
		