

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
    