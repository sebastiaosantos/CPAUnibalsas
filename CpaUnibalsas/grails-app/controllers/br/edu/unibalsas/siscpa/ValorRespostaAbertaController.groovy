package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ValorRespostaAbertaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ValorRespostaAberta.list(params), model:[valorRespostaAbertaInstanceCount: ValorRespostaAberta.count()]
    }
	
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		  respond ValorRespostaAberta.list(params), model:[valorRespostaAbertaInstanceCount: ValorRespostaAberta.count()]
	}
	

    def show(ValorRespostaAberta valorRespostaAbertaInstance) {
        respond valorRespostaAbertaInstance
    }

    def create() {
        respond new ValorRespostaAberta(params)
    }

    @Transactional
    def save(ValorRespostaAberta valorRespostaAbertaInstance) {
        if (valorRespostaAbertaInstance == null) {
            notFound()
            return
        }

        if (valorRespostaAbertaInstance.hasErrors()) {
            respond valorRespostaAbertaInstance.errors, view:'create'
            return
        }

        valorRespostaAbertaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'valorRespostaAbertaInstance.label', default: 'ValorRespostaAberta'), valorRespostaAbertaInstance.id])
                redirect valorRespostaAbertaInstance
            }
            '*' { respond valorRespostaAbertaInstance, [status: CREATED] }
        }
    }

    def edit(ValorRespostaAberta valorRespostaAbertaInstance) {
        respond valorRespostaAbertaInstance
    }

    @Transactional
    def update(ValorRespostaAberta valorRespostaAbertaInstance) {
        if (valorRespostaAbertaInstance == null) {
            notFound()
            return
        }

        if (valorRespostaAbertaInstance.hasErrors()) {
            respond valorRespostaAbertaInstance.errors, view:'edit'
            return
        }

        valorRespostaAbertaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ValorRespostaAberta.label', default: 'ValorRespostaAberta'), valorRespostaAbertaInstance.id])
                redirect valorRespostaAbertaInstance
            }
            '*'{ respond valorRespostaAbertaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ValorRespostaAberta valorRespostaAbertaInstance) {

        if (valorRespostaAbertaInstance == null) {
            notFound()
            return
        }

        valorRespostaAbertaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ValorRespostaAberta.label', default: 'ValorRespostaAberta'), valorRespostaAbertaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'valorRespostaAbertaInstance.label', default: 'ValorRespostaAberta'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
