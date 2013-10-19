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
    template: _.template({title: "Nome do Post1", content: "Conteudo do Post"}));
            this.$el.html(this.template({title: "Nome do Post", content: "Conteúdo do Post"}));

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


