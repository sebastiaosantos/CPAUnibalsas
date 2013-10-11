package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoDeQuestaoCategoriaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoDeQuestaoCategoria.list(params), model:[tipoDeQuestaoCategoriaInstanceCount: TipoDeQuestaoCategoria.count()]
    }

    def show(TipoDeQuestaoCategoria tipoDeQuestaoCategoriaInstance) {
        respond tipoDeQuestaoCategoriaInstance
    }

    def create() {
        respond new TipoDeQuestaoCategoria(params)
    }

    @Transactional
    def save(TipoDeQuestaoCategoria tipoDeQuestaoCategoriaInstance) {
        if (tipoDeQuestaoCategoriaInstance == null) {
            notFound()
            return
        }

        if (tipoDeQuestaoCategoriaInstance.hasErrors()) {
            respond tipoDeQuestaoCategoriaInstance.errors, view:'create'
            return
        }

        tipoDeQuestaoCategoriaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoDeQuestaoCategoriaInstance.label', default: 'TipoDeQuestaoCategoria'), tipoDeQuestaoCategoriaInstance.id])
                redirect tipoDeQuestaoCategoriaInstance
            }
            '*' { respond tipoDeQuestaoCategoriaInstance, [status: CREATED] }
        }
    }

    def edit(TipoDeQuestaoCategoria tipoDeQuestaoCategoriaInstance) {
        respond tipoDeQuestaoCategoriaInstance
    }

    @Transactional
    def update(TipoDeQuestaoCategoria tipoDeQuestaoCategoriaInstance) {
        if (tipoDeQuestaoCategoriaInstance == null) {
            notFound()
            return
        }

        if (tipoDeQuestaoCategoriaInstance.hasErrors()) {
            respond tipoDeQuestaoCategoriaInstance.errors, view:'edit'
            return
        }

        tipoDeQuestaoCategoriaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoDeQuestaoCategoria.label', default: 'TipoDeQuestaoCategoria'), tipoDeQuestaoCategoriaInstance.id])
                redirect tipoDeQuestaoCategoriaInstance
            }
            '*'{ respond tipoDeQuestaoCategoriaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoDeQuestaoCategoria tipoDeQuestaoCategoriaInstance) {

        if (tipoDeQuestaoCategoriaInstance == null) {
            notFound()
            return
        }

        tipoDeQuestaoCategoriaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoDeQuestaoCategoria.label', default: 'TipoDeQuestaoCategoria'), tipoDeQuestaoCategoriaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoDeQuestaoCategoriaInstance.label', default: 'TipoDeQuestaoCategoria'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
