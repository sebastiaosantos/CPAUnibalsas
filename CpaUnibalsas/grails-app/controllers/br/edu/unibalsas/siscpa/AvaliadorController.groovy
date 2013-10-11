package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvaliadorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Avaliador.list(params), model:[avaliadorInstanceCount: Avaliador.count()]
    }

    def show(Avaliador avaliadorInstance) {
        respond avaliadorInstance
    }

    def create() {
        respond new Avaliador(params)
    }

    @Transactional
    def save(Avaliador avaliadorInstance) {
        if (avaliadorInstance == null) {
            notFound()
            return
        }

        if (avaliadorInstance.hasErrors()) {
            respond avaliadorInstance.errors, view:'create'
            return
        }

        avaliadorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaliadorInstance.label', default: 'Avaliador'), avaliadorInstance.id])
                redirect avaliadorInstance
            }
            '*' { respond avaliadorInstance, [status: CREATED] }
        }
    }

    def edit(Avaliador avaliadorInstance) {
        respond avaliadorInstance
    }

    @Transactional
    def update(Avaliador avaliadorInstance) {
        if (avaliadorInstance == null) {
            notFound()
            return
        }

        if (avaliadorInstance.hasErrors()) {
            respond avaliadorInstance.errors, view:'edit'
            return
        }

        avaliadorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Avaliador.label', default: 'Avaliador'), avaliadorInstance.id])
                redirect avaliadorInstance
            }
            '*'{ respond avaliadorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Avaliador avaliadorInstance) {

        if (avaliadorInstance == null) {
            notFound()
            return
        }

        avaliadorInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Avaliador.label', default: 'Avaliador'), avaliadorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'avaliadorInstance.label', default: 'Avaliador'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
