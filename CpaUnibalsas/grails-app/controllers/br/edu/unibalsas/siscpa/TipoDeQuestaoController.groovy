package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoDeQuestaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoDeQuestao.list(params), model:[tipoDeQuestaoInstanceCount: TipoDeQuestao.count()]
    }

    def show(TipoDeQuestao tipoDeQuestaoInstance) {
        respond tipoDeQuestaoInstance
    }

    def create() {
        respond new TipoDeQuestao(params)
    }

    @Transactional
    def save(TipoDeQuestao tipoDeQuestaoInstance) {
        if (tipoDeQuestaoInstance == null) {
            notFound()
            return
        }

        if (tipoDeQuestaoInstance.hasErrors()) {
            respond tipoDeQuestaoInstance.errors, view:'create'
            return
        }

        tipoDeQuestaoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoDeQuestaoInstance.label', default: 'TipoDeQuestao'), tipoDeQuestaoInstance.id])
                redirect tipoDeQuestaoInstance
            }
            '*' { respond tipoDeQuestaoInstance, [status: CREATED] }
        }
    }

    def edit(TipoDeQuestao tipoDeQuestaoInstance) {
        respond tipoDeQuestaoInstance
    }

    @Transactional
    def update(TipoDeQuestao tipoDeQuestaoInstance) {
        if (tipoDeQuestaoInstance == null) {
            notFound()
            return
        }

        if (tipoDeQuestaoInstance.hasErrors()) {
            respond tipoDeQuestaoInstance.errors, view:'edit'
            return
        }

        tipoDeQuestaoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoDeQuestao.label', default: 'TipoDeQuestao'), tipoDeQuestaoInstance.id])
                redirect tipoDeQuestaoInstance
            }
            '*'{ respond tipoDeQuestaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoDeQuestao tipoDeQuestaoInstance) {

        if (tipoDeQuestaoInstance == null) {
            notFound()
            return
        }

        tipoDeQuestaoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoDeQuestao.label', default: 'TipoDeQuestao'), tipoDeQuestaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoDeQuestaoInstance.label', default: 'TipoDeQuestao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
