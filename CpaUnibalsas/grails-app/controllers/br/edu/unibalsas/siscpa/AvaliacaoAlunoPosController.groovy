package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvaliacaoAlunoPosController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AvaliacaoAlunoPos.list(params), model:[avaliacaoAlunoPosInstanceCount: AvaliacaoAlunoPos.count()]
    }

    def show(AvaliacaoAlunoPos avaliacaoAlunoPosInstance) {
        respond avaliacaoAlunoPosInstance
    }

    def create() {
        respond new AvaliacaoAlunoPos(params)
    }

    @Transactional
    def save(AvaliacaoAlunoPos avaliacaoAlunoPosInstance) {
        if (avaliacaoAlunoPosInstance == null) {
            notFound()
            return
        }

        if (avaliacaoAlunoPosInstance.hasErrors()) {
            respond avaliacaoAlunoPosInstance.errors, view:'create'
            return
        }

        avaliacaoAlunoPosInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaliacaoAlunoPosInstance.label', default: 'AvaliacaoAlunoPos'), avaliacaoAlunoPosInstance.id])
                redirect avaliacaoAlunoPosInstance
            }
            '*' { respond avaliacaoAlunoPosInstance, [status: CREATED] }
        }
    }

    def edit(AvaliacaoAlunoPos avaliacaoAlunoPosInstance) {
        respond avaliacaoAlunoPosInstance
    }

    @Transactional
    def update(AvaliacaoAlunoPos avaliacaoAlunoPosInstance) {
        if (avaliacaoAlunoPosInstance == null) {
            notFound()
            return
        }

        if (avaliacaoAlunoPosInstance.hasErrors()) {
            respond avaliacaoAlunoPosInstance.errors, view:'edit'
            return
        }

        avaliacaoAlunoPosInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AvaliacaoAlunoPos.label', default: 'AvaliacaoAlunoPos'), avaliacaoAlunoPosInstance.id])
                redirect avaliacaoAlunoPosInstance
            }
            '*'{ respond avaliacaoAlunoPosInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AvaliacaoAlunoPos avaliacaoAlunoPosInstance) {

        if (avaliacaoAlunoPosInstance == null) {
            notFound()
            return
        }

        avaliacaoAlunoPosInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AvaliacaoAlunoPos.label', default: 'AvaliacaoAlunoPos'), avaliacaoAlunoPosInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'avaliacaoAlunoPosInstance.label', default: 'AvaliacaoAlunoPos'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
