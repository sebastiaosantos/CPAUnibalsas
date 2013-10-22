var QuestaoCollections = Backbone.Collection.extend({
    model: QuestaoModel,
    url: 'questoes',
    comparator: function(questao) {
       questao.get('id');
    }
});

var QuestaoCollections = new QuestaoCollection();