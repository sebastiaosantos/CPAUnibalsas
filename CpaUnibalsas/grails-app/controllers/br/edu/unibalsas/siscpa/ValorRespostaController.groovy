package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ValorRespostaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ValorResposta.list(params), model:[valorRespostaInstanceCount: ValorResposta.count()]
    }
	
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		  respond ValorResposta.list(params), model:[valorRespostaInstanceCount: ValorResposta.count()]
	}
	

    def show(ValorResposta valorRespostaInstance) {
        respond valorRespostaInstance
    }

    def create() {
        respond new ValorResposta(params)
    }

    @Transactional
    def save(ValorResposta valorRespostaInstance) {
        if (valorRespostaInstance == null) {
            notFound()
            return
        }

        if (valorRespostaInstance.hasErrors()) {
            respond valorRespostaInstance.errors, view:'create'
            return
        }

        valorRespostaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'valorRespostaInstance.label', default: 'ValorResposta'), valorRespostaInstance.id])
                redirect valorRespostaInstance
            }
            '*' { respond valorRespostaInstance, [status: CREATED] }
        }
    }

    def edit(ValorResposta valorRespostaInstance) {
        respond valorRespostaInstance
    }

    @Transactional
    def update(ValorResposta valorRespostaInstance) {
        if (valorRespostaInstance == null) {
            notFound()
            return
        }

        if (valorRespostaInstance.hasErrors()) {
            respond valorRespostaInstance.errors, view:'edit'
            return
        }

        valorRespostaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ValorResposta.label', default: 'ValorResposta'), valorRespostaInstance.id])
                redirect valorRespostaInstance
            }
            '*'{ respond valorRespostaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ValorResposta valorRespostaInstance) {

        if (valorRespostaInstance == null) {
            notFound()
            return
        }

        valorRespostaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ValorResposta.label', default: 'ValorResposta'), valorRespostaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'valorRespostaInstance.label', default: 'ValorResposta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
