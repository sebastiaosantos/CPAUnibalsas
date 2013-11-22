package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvaliacaoFuncionarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AvaliacaoFuncionario.list(params), model:[avaliacaoFuncionarioInstanceCount: AvaliacaoFuncionario.count()]
    }
	
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		  respond AvaliacaoFuncionario.list(params), model:[avaliacaoFuncionarioInstanceCount: AvaliacaoFuncionario.count()]
	}
	

    def show(AvaliacaoFuncionario avaliacaoFuncionarioInstance) {
        respond avaliacaoFuncionarioInstance
    }

    def create() {
        respond new AvaliacaoFuncionario(params)
    }

    @Transactional
    def save(AvaliacaoFuncionario avaliacaoFuncionarioInstance) {
        if (avaliacaoFuncionarioInstance == null) {
            notFound()
            return
        }

        if (avaliacaoFuncionarioInstance.hasErrors()) {
            respond avaliacaoFuncionarioInstance.errors, view:'create'
            return
        }

        avaliacaoFuncionarioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaliacaoFuncionarioInstance.label', default: 'AvaliacaoFuncionario'), avaliacaoFuncionarioInstance.id])
                redirect avaliacaoFuncionarioInstance
            }
            '*' { respond avaliacaoFuncionarioInstance, [status: CREATED] }
        }
    }

    def edit(AvaliacaoFuncionario avaliacaoFuncionarioInstance) {
        respond avaliacaoFuncionarioInstance
    }

    @Transactional
    def update(AvaliacaoFuncionario avaliacaoFuncionarioInstance) {
        if (avaliacaoFuncionarioInstance == null) {
            notFound()
            return
        }

        if (avaliacaoFuncionarioInstance.hasErrors()) {
            respond avaliacaoFuncionarioInstance.errors, view:'edit'
            return
        }

        avaliacaoFuncionarioInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AvaliacaoFuncionario.label', default: 'AvaliacaoFuncionario'), avaliacaoFuncionarioInstance.id])
                redirect avaliacaoFuncionarioInstance
            }
            '*'{ respond avaliacaoFuncionarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AvaliacaoFuncionario avaliacaoFuncionarioInstance) {

        if (avaliacaoFuncionarioInstance == null) {
            notFound()
            return
        }

        avaliacaoFuncionarioInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AvaliacaoFuncionario.label', default: 'AvaliacaoFuncionario'), avaliacaoFuncionarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'avaliacaoFuncionarioInstance.label', default: 'AvaliacaoFuncionario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
