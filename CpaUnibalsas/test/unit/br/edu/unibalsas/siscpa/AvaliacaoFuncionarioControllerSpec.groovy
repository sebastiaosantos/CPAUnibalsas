package br.edu.unibalsas.siscpa



import grails.test.mixin.*
import spock.lang.*

@TestFor(AvaliacaoFuncionarioController)
@Mock(AvaliacaoFuncionario)
class AvaliacaoFuncionarioControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.avaliacaoFuncionarioInstanceList
            model.avaliacaoFuncionarioInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.avaliacaoFuncionarioInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def avaliacaoFuncionario = new AvaliacaoFuncionario()
            avaliacaoFuncionario.validate()
            controller.save(avaliacaoFuncionario)

        then:"The create view is rendered again with the correct model"
            model.avaliacaoFuncionarioInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            avaliacaoFuncionario = new AvaliacaoFuncionario(params)

            controller.save(avaliacaoFuncionario)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/avaliacaoFuncionario/show/1'
            controller.flash.message != null
            AvaliacaoFuncionario.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def avaliacaoFuncionario = new AvaliacaoFuncionario(params)
            controller.show(avaliacaoFuncionario)

        then:"A model is populated containing the domain instance"
            model.avaliacaoFuncionarioInstance == avaliacaoFuncionario
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def avaliacaoFuncionario = new AvaliacaoFuncionario(params)
            controller.edit(avaliacaoFuncionario)

        then:"A model is populated containing the domain instance"
            model.avaliacaoFuncionarioInstance == avaliacaoFuncionario
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def avaliacaoFuncionario = new AvaliacaoFuncionario()
            avaliacaoFuncionario.validate()
            controller.update(avaliacaoFuncionario)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.avaliacaoFuncionarioInstance == avaliacaoFuncionario

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            avaliacaoFuncionario = new AvaliacaoFuncionario(params).save(flush: true)
            controller.update(avaliacaoFuncionario)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/avaliacaoFuncionario/show/$avaliacaoFuncionario.id"
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
            def avaliacaoFuncionario = new AvaliacaoFuncionario(params).save(flush: true)

        then:"It exists"
            AvaliacaoFuncionario.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(avaliacaoFuncionario)

        then:"The instance is deleted"
            AvaliacaoFuncionario.count() == 0
            response.redirectedUrl == '/avaliacaoFuncionario/index'
            flash.message != null
    }
}
