
var QuestaoModel = Backbone.Model.extend({
    urlRoot: 'questoes',
    defaults: {
        descricao: ''
    }
});




var QuestaoView = Backbone.View.extend({
	tagName: 'article',
    className: 'page-questao',
    el: $('.container'),
    initialize: function() {
    	_.bindAll(this, 'render', 'removeQuestao', 'refresh');


    	this.model = new QuestaoModel();
		this.model.on("change", this.render);
		this.model.on("destroy", this.refresh);
		this.model.fetch();

    },
    template: _.template('<h2>Teste{{descricao}}</h2>'),
    render: function() {
    	this.$el.html(this.template(this.model.toJSON()));
    	console.log(this.model.toJSON());
    	//return this;
    },
    removeQuestao: function() {
        this.model.destroy();
    },
    refresh: function() {
        this.model.clear({silent: true});
        this.model.fetch();
    }
}
    );
    
/**
 * @author jefferson
 */
var QuestaoFormView = Backbone.View.extend({
    tagName: 'form',
    className: 'page-form',
    id: 'questao-form',
    attributes: {
        action: 'questoes',
        method: 'POST'
    },
    events: {
        "submit" : "save"
    },
    el: $('body'),
    initialize: function(model) {
        _.bindAll(this, 'render', 'save', 'goToIndex');

        //this.template = $('#post-form').html();
        this.model = new QuestaoModel();

        this.model.on("error", this.showError);
        this.model.on("sync", this.goToIndex);
        this.render();
    },
    template: _.template('<form class="form-inline" role="form"> \
    		  <div class="form-group"> \
    		    <label class="sr-only" for="descricao">Descrição</label> \
    		    <input type="text" class="form-control" id="descricao" placeholder="Enter com a descrição"> \
    		  </div> \
    		  <button type="submit" class="btn btn-default">Adicionar</button> \
    		</form>'),

    render: function() {
        this.$el.append(this.template(this.model.toJSON()));

        this.descricaoInput = this.$el.find('#descricao');
        
        
    },

    save: function(e) {
        e.preventDefault();

        var descricao = this.descricaoInput.val();
        console.log(descricao);        

        this.model.set({
            descricao: descricao
        });

        if (this.model.isValid())
            this.model.save();
        
    },

    showError:function(model, error) {
        window.alert('Ocorreu um erro, motivo: ' + error);
    },

    goToIndex: function() {
        window.location = '/CpaUnibalsas';
    }
});


