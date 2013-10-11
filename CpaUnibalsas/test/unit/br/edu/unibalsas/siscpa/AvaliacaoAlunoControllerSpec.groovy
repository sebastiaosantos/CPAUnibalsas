package br.edu.unibalsas.siscpa



import grails.test.mixin.*
import spock.lang.*

@TestFor(AvaliacaoAlunoController)
@Mock(AvaliacaoAluno)
class AvaliacaoAlunoControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.avaliacaoAlunoInstanceList
            model.avaliacaoAlunoInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.avaliacaoAlunoInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            def avaliacaoAluno = new AvaliacaoAluno()
            avaliacaoAluno.validate()
            controller.save(avaliacaoAluno)

        then:"The create view is rendered again with the correct model"
            model.avaliacaoAlunoInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            avaliacaoAluno = new AvaliacaoAluno(params)

            controller.save(avaliacaoAluno)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/avaliacaoAluno/show/1'
            controller.flash.message != null
            AvaliacaoAluno.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def avaliacaoAluno = new AvaliacaoAluno(params)
            controller.show(avaliacaoAluno)

        then:"A model is populated containing the domain instance"
            model.avaliacaoAlunoInstance == avaliacaoAluno
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def avaliacaoAluno = new AvaliacaoAluno(params)
            controller.edit(avaliacaoAluno)

        then:"A model is populated containing the domain instance"
            model.avaliacaoAlunoInstance == avaliacaoAluno
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            controller.update(null)

        then:"A 404 error is returned"
            status == 404

        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def avaliacaoAluno = new AvaliacaoAluno()
            avaliacaoAluno.validate()
            controller.update(avaliacaoAluno)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.avaliacaoAlunoInstance == avaliacaoAluno

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            avaliacaoAluno = new AvaliacaoAluno(params).save(flush: true)
            controller.update(avaliacaoAluno)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/avaliacaoAluno/show/$avaliacaoAluno.id"
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
            def avaliacaoAluno = new AvaliacaoAluno(params).save(flush: true)

        then:"It exists"
            AvaliacaoAluno.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(avaliacaoAluno)

        then:"The instance is deleted"
            AvaliacaoAluno.count() == 0
            response.redirectedUrl == '/avaliacaoAluno/index'
            flash.message != null
    }
}
