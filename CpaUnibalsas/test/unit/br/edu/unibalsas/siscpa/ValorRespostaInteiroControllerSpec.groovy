package br.edu.unibalsas.siscpa



import grails.test.mixin.*
import spock.lang.*

@TestFor(ValorRespostaInteiroController)
@Mock(ValorRespostaInteiro)
class ValorRespostaInteiroControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.valorRespostaInteiroInstanceList
            model.valorRespostaInteiroInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.valorRespostaInteiroInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def valorRespostaInteiro = new ValorRespostaInteiro()
            valorRespostaInteiro.validate()
            controller.save(valorRespostaInteiro)

        then:"The create view is rendered again with the correct model"
            model.valorRespostaInteiroInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            valorRespostaInteiro = new ValorRespostaInteiro(params)

            controller.save(valorRespostaInteiro)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/valorRespostaInteiro/show/1'
            controller.flash.message != null
            ValorRespostaInteiro.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def valorRespostaInteiro = new ValorRespostaInteiro(params)
            controller.show(valorRespostaInteiro)

        then:"A model is populated containing the domain instance"
            model.valorRespostaInteiroInstance == valorRespostaInteiro
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def valorRespostaInteiro = new ValorRespostaInteiro(params)
            controller.edit(valorRespostaInteiro)

        then:"A model is populated containing the domain instance"
            model.valorRespostaInteiroInstance == valorRespostaInteiro
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def valorRespostaInteiro = new ValorRespostaInteiro()
            valorRespostaInteiro.validate()
            controller.update(valorRespostaInteiro)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.valorRespostaInteiroInstance == valorRespostaInteiro

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            valorRespostaInteiro = new ValorRespostaInteiro(params).save(flush: true)
            controller.update(valorRespostaInteiro)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/valorRespostaInteiro/show/$valorRespostaInteiro.id"
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
            def valorRespostaInteiro = new ValorRespostaInteiro(params).save(flush: true)

        then:"It exists"
            ValorRespostaInteiro.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(valorRespostaInteiro)

        then:"The instance is deleted"
            ValorRespostaInteiro.count() == 0
            response.redirectedUrl == '/valorRespostaInteiro/index'
            flash.message != null
    }
}
