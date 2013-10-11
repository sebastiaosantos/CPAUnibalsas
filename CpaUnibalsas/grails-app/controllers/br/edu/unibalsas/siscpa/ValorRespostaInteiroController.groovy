package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ValorRespostaInteiroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ValorRespostaInteiro.list(params), model:[valorRespostaInteiroInstanceCount: ValorRespostaInteiro.count()]
    }

    def show(ValorRespostaInteiro valorRespostaInteiroInstance) {
        respond valorRespostaInteiroInstance
    }

    def create() {
        respond new ValorRespostaInteiro(params)
    }

    @Transactional
    def save(ValorRespostaInteiro valorRespostaInteiroInstance) {
        if (valorRespostaInteiroInstance == null) {
            notFound()
            return
        }

        if (valorRespostaInteiroInstance.hasErrors()) {
            respond valorRespostaInteiroInstance.errors, view:'create'
            return
        }

        valorRespostaInteiroInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'valorRespostaInteiroInstance.label', default: 'ValorRespostaInteiro'), valorRespostaInteiroInstance.id])
                redirect valorRespostaInteiroInstance
            }
            '*' { respond valorRespostaInteiroInstance, [status: CREATED] }
        }
    }

    def edit(ValorRespostaInteiro valorRespostaInteiroInstance) {
        respond valorRespostaInteiroInstance
    }

    @Transactional
    def update(ValorRespostaInteiro valorRespostaInteiroInstance) {
        if (valorRespostaInteiroInstance == null) {
            notFound()
            return
        }

        if (valorRespostaInteiroInstance.hasErrors()) {
            respond valorRespostaInteiroInstance.errors, view:'edit'
            return
        }

        valorRespostaInteiroInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ValorRespostaInteiro.label', default: 'ValorRespostaInteiro'), valorRespostaInteiroInstance.id])
                redirect valorRespostaInteiroInstance
            }
            '*'{ respond valorRespostaInteiroInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ValorRespostaInteiro valorRespostaInteiroInstance) {

        if (valorRespostaInteiroInstance == null) {
            notFound()
            return
        }

        valorRespostaInteiroInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ValorRespostaInteiro.label', default: 'ValorRespostaInteiro'), valorRespostaInteiroInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'valorRespostaInteiroInstance.label', default: 'ValorRespostaInteiro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
