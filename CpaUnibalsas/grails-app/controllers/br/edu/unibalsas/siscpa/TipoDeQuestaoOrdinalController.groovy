package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoDeQuestaoOrdinalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoDeQuestaoOrdinal.list(params), model:[tipoDeQuestaoOrdinalInstanceCount: TipoDeQuestaoOrdinal.count()]
    }

    def show(TipoDeQuestaoOrdinal tipoDeQuestaoOrdinalInstance) {
        respond tipoDeQuestaoOrdinalInstance
    }

    def create() {
        respond new TipoDeQuestaoOrdinal(params)
    }

    @Transactional
    def save(TipoDeQuestaoOrdinal tipoDeQuestaoOrdinalInstance) {
        if (tipoDeQuestaoOrdinalInstance == null) {
            notFound()
            return
        }

        if (tipoDeQuestaoOrdinalInstance.hasErrors()) {
            respond tipoDeQuestaoOrdinalInstance.errors, view:'create'
            return
        }

        tipoDeQuestaoOrdinalInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoDeQuestaoOrdinalInstance.label', default: 'TipoDeQuestaoOrdinal'), tipoDeQuestaoOrdinalInstance.id])
                redirect tipoDeQuestaoOrdinalInstance
            }
            '*' { respond tipoDeQuestaoOrdinalInstance, [status: CREATED] }
        }
    }

    def edit(TipoDeQuestaoOrdinal tipoDeQuestaoOrdinalInstance) {
        respond tipoDeQuestaoOrdinalInstance
    }

    @Transactional
    def update(TipoDeQuestaoOrdinal tipoDeQuestaoOrdinalInstance) {
        if (tipoDeQuestaoOrdinalInstance == null) {
            notFound()
            return
        }

        if (tipoDeQuestaoOrdinalInstance.hasErrors()) {
            respond tipoDeQuestaoOrdinalInstance.errors, view:'edit'
            return
        }

        tipoDeQuestaoOrdinalInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoDeQuestaoOrdinal.label', default: 'TipoDeQuestaoOrdinal'), tipoDeQuestaoOrdinalInstance.id])
                redirect tipoDeQuestaoOrdinalInstance
            }
            '*'{ respond tipoDeQuestaoOrdinalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoDeQuestaoOrdinal tipoDeQuestaoOrdinalInstance) {

        if (tipoDeQuestaoOrdinalInstance == null) {
            notFound()
            return
        }

        tipoDeQuestaoOrdinalInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoDeQuestaoOrdinal.label', default: 'TipoDeQuestaoOrdinal'), tipoDeQuestaoOrdinalInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoDeQuestaoOrdinalInstance.label', default: 'TipoDeQuestaoOrdinal'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
