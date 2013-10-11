package br.edu.unibalsas.siscpa



import grails.test.mixin.*
import spock.lang.*

@TestFor(TipoDeQuestaoOrdinalController)
@Mock(TipoDeQuestaoOrdinal)
class TipoDeQuestaoOrdinalControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.tipoDeQuestaoOrdinalInstanceList
            model.tipoDeQuestaoOrdinalInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.tipoDeQuestaoOrdinalInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def tipoDeQuestaoOrdinal = new TipoDeQuestaoOrdinal()
            tipoDeQuestaoOrdinal.validate()
            controller.save(tipoDeQuestaoOrdinal)

        then:"The create view is rendered again with the correct model"
            model.tipoDeQuestaoOrdinalInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            tipoDeQuestaoOrdinal = new TipoDeQuestaoOrdinal(params)

            controller.save(tipoDeQuestaoOrdinal)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/tipoDeQuestaoOrdinal/show/1'
            controller.flash.message != null
            TipoDeQuestaoOrdinal.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def tipoDeQuestaoOrdinal = new TipoDeQuestaoOrdinal(params)
            controller.show(tipoDeQuestaoOrdinal)

        then:"A model is populated containing the domain instance"
            model.tipoDeQuestaoOrdinalInstance == tipoDeQuestaoOrdinal
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def tipoDeQuestaoOrdinal = new TipoDeQuestaoOrdinal(params)
            controller.edit(tipoDeQuestaoOrdinal)

        then:"A model is populated containing the domain instance"
            model.tipoDeQuestaoOrdinalInstance == tipoDeQuestaoOrdinal
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def tipoDeQuestaoOrdinal = new TipoDeQuestaoOrdinal()
            tipoDeQuestaoOrdinal.validate()
            controller.update(tipoDeQuestaoOrdinal)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.tipoDeQuestaoOrdinalInstance == tipoDeQuestaoOrdinal

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            tipoDeQuestaoOrdinal = new TipoDeQuestaoOrdinal(params).save(flush: true)
            controller.update(tipoDeQuestaoOrdinal)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/tipoDeQuestaoOrdinal/show/$tipoDeQuestaoOrdinal.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            controller.delete(null)

        then:"A 404 is returned"
            status == 404

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def tipoDeQuestaoOrdinal = new TipoDeQuestaoOrdinal(params).save(flush: true)

        then:"It exists"
            TipoDeQuestaoOrdinal.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(tipoDeQuestaoOrdinal)

        then:"The instance is deleted"
            TipoDeQuestaoOrdinal.count() == 0
            response.redirectedUrl == '/tipoDeQuestaoOrdinal/index'
            flash.message != null
    }
}
