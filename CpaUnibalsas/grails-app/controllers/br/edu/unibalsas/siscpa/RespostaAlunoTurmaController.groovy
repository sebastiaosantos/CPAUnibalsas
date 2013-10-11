package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RespostaAlunoTurmaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond RespostaAlunoTurma.list(params), model:[respostaAlunoTurmaInstanceCount: RespostaAlunoTurma.count()]
    }

    def show(RespostaAlunoTurma respostaAlunoTurmaInstance) {
        respond respostaAlunoTurmaInstance
    }

    def create() {
        respond new RespostaAlunoTurma(params)
    }

    @Transactional
    def save(RespostaAlunoTurma respostaAlunoTurmaInstance) {
        if (respostaAlunoTurmaInstance == null) {
            notFound()
            return
        }

        if (respostaAlunoTurmaInstance.hasErrors()) {
            respond respostaAlunoTurmaInstance.errors, view:'create'
            return
        }

        respostaAlunoTurmaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'respostaAlunoTurmaInstance.label', default: 'RespostaAlunoTurma'), respostaAlunoTurmaInstance.id])
                redirect respostaAlunoTurmaInstance
            }
            '*' { respond respostaAlunoTurmaInstance, [status: CREATED] }
        }
    }

    def edit(RespostaAlunoTurma respostaAlunoTurmaInstance) {
        respond respostaAlunoTurmaInstance
    }

    @Transactional
    def update(RespostaAlunoTurma respostaAlunoTurmaInstance) {
        if (respostaAlunoTurmaInstance == null) {
            notFound()
            return
        }

        if (respostaAlunoTurmaInstance.hasErrors()) {
            respond respostaAlunoTurmaInstance.errors, view:'edit'
            return
        }

        respostaAlunoTurmaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'RespostaAlunoTurma.label', default: 'RespostaAlunoTurma'), respostaAlunoTurmaInstance.id])
                redirect respostaAlunoTurmaInstance
            }
            '*'{ respond respostaAlunoTurmaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(RespostaAlunoTurma respostaAlunoTurmaInstance) {

        if (respostaAlunoTurmaInstance == null) {
            notFound()
            return
        }

        respostaAlunoTurmaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'RespostaAlunoTurma.label', default: 'RespostaAlunoTurma'), respostaAlunoTurmaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'respostaAlunoTurmaInstance.label', default: 'RespostaAlunoTurma'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
