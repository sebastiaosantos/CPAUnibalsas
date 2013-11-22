package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvaliacaoAlunoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AvaliacaoAluno.list(params), model:[avaliacaoAlunoInstanceCount: AvaliacaoAluno.count()]
    }
	
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		  respond AvaliacaoAluno.list(params), model:[avaliacaoAlunoInstanceCount: AvaliacaoAluno.count()]
	}
	

    def show(AvaliacaoAluno avaliacaoAlunoInstance) {
        respond avaliacaoAlunoInstance
    }

    def create() {
        respond new AvaliacaoAluno(params)
    }

    @Transactional
    def save(AvaliacaoAluno avaliacaoAlunoInstance) {
        if (avaliacaoAlunoInstance == null) {
            notFound()
            return
        }

        if (avaliacaoAlunoInstance.hasErrors()) {
            respond avaliacaoAlunoInstance.errors, view:'create'
            return
        }

        avaliacaoAlunoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaliacaoAlunoInstance.label', default: 'AvaliacaoAluno'), avaliacaoAlunoInstance.id])
                redirect avaliacaoAlunoInstance
            }
            '*' { respond avaliacaoAlunoInstance, [status: CREATED] }
        }
    }

    def edit(AvaliacaoAluno avaliacaoAlunoInstance) {
        respond avaliacaoAlunoInstance
    }

    @Transactional
    def update(AvaliacaoAluno avaliacaoAlunoInstance) {
        if (avaliacaoAlunoInstance == null) {
            notFound()
            return
        }

        if (avaliacaoAlunoInstance.hasErrors()) {
            respond avaliacaoAlunoInstance.errors, view:'edit'
            return
        }

        avaliacaoAlunoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AvaliacaoAluno.label', default: 'AvaliacaoAluno'), avaliacaoAlunoInstance.id])
                redirect avaliacaoAlunoInstance
            }
            '*'{ respond avaliacaoAlunoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AvaliacaoAluno avaliacaoAlunoInstance) {

        if (avaliacaoAlunoInstance == null) {
            notFound()
            return
        }

        avaliacaoAlunoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AvaliacaoAluno.label', default: 'AvaliacaoAluno'), avaliacaoAlunoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'avaliacaoAlunoInstance.label', default: 'AvaliacaoAluno'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
