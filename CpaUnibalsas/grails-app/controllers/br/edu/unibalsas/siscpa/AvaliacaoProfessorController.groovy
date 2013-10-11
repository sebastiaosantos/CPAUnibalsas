package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvaliacaoProfessorController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AvaliacaoProfessor.list(params), model:[avaliacaoProfessorInstanceCount: AvaliacaoProfessor.count()]
    }

    def show(AvaliacaoProfessor avaliacaoProfessorInstance) {
        respond avaliacaoProfessorInstance
    }

    def create() {
        respond new AvaliacaoProfessor(params)
    }

    @Transactional
    def save(AvaliacaoProfessor avaliacaoProfessorInstance) {
        if (avaliacaoProfessorInstance == null) {
            notFound()
            return
        }

        if (avaliacaoProfessorInstance.hasErrors()) {
            respond avaliacaoProfessorInstance.errors, view:'create'
            return
        }

        avaliacaoProfessorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaliacaoProfessorInstance.label', default: 'AvaliacaoProfessor'), avaliacaoProfessorInstance.id])
                redirect avaliacaoProfessorInstance
            }
            '*' { respond avaliacaoProfessorInstance, [status: CREATED] }
        }
    }

    def edit(AvaliacaoProfessor avaliacaoProfessorInstance) {
        respond avaliacaoProfessorInstance
    }

    @Transactional
    def update(AvaliacaoProfessor avaliacaoProfessorInstance) {
        if (avaliacaoProfessorInstance == null) {
            notFound()
            return
        }

        if (avaliacaoProfessorInstance.hasErrors()) {
            respond avaliacaoProfessorInstance.errors, view:'edit'
            return
        }

        avaliacaoProfessorInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AvaliacaoProfessor.label', default: 'AvaliacaoProfessor'), avaliacaoProfessorInstance.id])
                redirect avaliacaoProfessorInstance
            }
            '*'{ respond avaliacaoProfessorInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AvaliacaoProfessor avaliacaoProfessorInstance) {

        if (avaliacaoProfessorInstance == null) {
            notFound()
            return
        }

        avaliacaoProfessorInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AvaliacaoProfessor.label', default: 'AvaliacaoProfessor'), avaliacaoProfessorInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'avaliacaoProfessorInstance.label', default: 'AvaliacaoProfessor'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
