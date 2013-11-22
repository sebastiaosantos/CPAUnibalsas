package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class BlocoDeQuestoesController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond BlocoDeQuestoes.list(params), model:[blocoDeQuestoesInstanceCount: BlocoDeQuestoes.count()]
    }
	
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		  respond BlocoDeQuestoes.list(params), model:[blocoDeQuestoesInstanceCount: BlocoDeQuestoes.count()]
	}
	

    def show(BlocoDeQuestoes blocoDeQuestoesInstance) {
        respond blocoDeQuestoesInstance
    }

    def create() {
        respond new BlocoDeQuestoes(params)
    }

    @Transactional
    def save(BlocoDeQuestoes blocoDeQuestoesInstance) {
        if (blocoDeQuestoesInstance == null) {
            notFound()
            return
        }

        if (blocoDeQuestoesInstance.hasErrors()) {
            respond blocoDeQuestoesInstance.errors, view:'create'
            return
        }

        blocoDeQuestoesInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'blocoDeQuestoesInstance.label', default: 'BlocoDeQuestoes'), blocoDeQuestoesInstance.id])
                redirect blocoDeQuestoesInstance
            }
            '*' { respond blocoDeQuestoesInstance, [status: CREATED] }
        }
    }

    def edit(BlocoDeQuestoes blocoDeQuestoesInstance) {
        respond blocoDeQuestoesInstance
    }

    @Transactional
    def update(BlocoDeQuestoes blocoDeQuestoesInstance) {
        if (blocoDeQuestoesInstance == null) {
            notFound()
            return
        }

        if (blocoDeQuestoesInstance.hasErrors()) {
            respond blocoDeQuestoesInstance.errors, view:'edit'
            return
        }

        blocoDeQuestoesInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'BlocoDeQuestoes.label', default: 'BlocoDeQuestoes'), blocoDeQuestoesInstance.id])
                redirect blocoDeQuestoesInstance
            }
            '*'{ respond blocoDeQuestoesInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(BlocoDeQuestoes blocoDeQuestoesInstance) {

        if (blocoDeQuestoesInstance == null) {
            notFound()
            return
        }

        blocoDeQuestoesInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'BlocoDeQuestoes.label', default: 'BlocoDeQuestoes'), blocoDeQuestoesInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'blocoDeQuestoesInstance.label', default: 'BlocoDeQuestoes'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
