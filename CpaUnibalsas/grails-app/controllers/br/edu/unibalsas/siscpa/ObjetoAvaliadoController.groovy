package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ObjetoAvaliadoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ObjetoAvaliado.list(params), model:[objetoAvaliadoInstanceCount: ObjetoAvaliado.count()]
    }

    def show(ObjetoAvaliado objetoAvaliadoInstance) {
        respond objetoAvaliadoInstance
    }

    def create() {
        respond new ObjetoAvaliado(params)
    }

    @Transactional
    def save(ObjetoAvaliado objetoAvaliadoInstance) {
        if (objetoAvaliadoInstance == null) {
            notFound()
            return
        }

        if (objetoAvaliadoInstance.hasErrors()) {
            respond objetoAvaliadoInstance.errors, view:'create'
            return
        }

        objetoAvaliadoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'objetoAvaliadoInstance.label', default: 'ObjetoAvaliado'), objetoAvaliadoInstance.id])
                redirect objetoAvaliadoInstance
            }
            '*' { respond objetoAvaliadoInstance, [status: CREATED] }
        }
    }

    def edit(ObjetoAvaliado objetoAvaliadoInstance) {
        respond objetoAvaliadoInstance
    }

    @Transactional
    def update(ObjetoAvaliado objetoAvaliadoInstance) {
        if (objetoAvaliadoInstance == null) {
            notFound()
            return
        }

        if (objetoAvaliadoInstance.hasErrors()) {
            respond objetoAvaliadoInstance.errors, view:'edit'
            return
        }

        objetoAvaliadoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ObjetoAvaliado.label', default: 'ObjetoAvaliado'), objetoAvaliadoInstance.id])
                redirect objetoAvaliadoInstance
            }
            '*'{ respond objetoAvaliadoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ObjetoAvaliado objetoAvaliadoInstance) {

        if (objetoAvaliadoInstance == null) {
            notFound()
            return
        }

        objetoAvaliadoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ObjetoAvaliado.label', default: 'ObjetoAvaliado'), objetoAvaliadoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'objetoAvaliadoInstance.label', default: 'ObjetoAvaliado'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
