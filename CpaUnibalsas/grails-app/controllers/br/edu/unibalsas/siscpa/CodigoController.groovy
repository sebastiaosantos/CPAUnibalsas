package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CodigoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Codigo.list(params), model:[codigoInstanceCount: Codigo.count()]
    }

    def show(Codigo codigoInstance) {
        respond codigoInstance
    }

    def create() {
        respond new Codigo(params)
    }

    @Transactional
    def save(Codigo codigoInstance) {
        if (codigoInstance == null) {
            notFound()
            return
        }

        if (codigoInstance.hasErrors()) {
            respond codigoInstance.errors, view:'create'
            return
        }

        codigoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'codigoInstance.label', default: 'Codigo'), codigoInstance.id])
                redirect codigoInstance
            }
            '*' { respond codigoInstance, [status: CREATED] }
        }
    }

    def edit(Codigo codigoInstance) {
        respond codigoInstance
    }

    @Transactional
    def update(Codigo codigoInstance) {
        if (codigoInstance == null) {
            notFound()
            return
        }

        if (codigoInstance.hasErrors()) {
            respond codigoInstance.errors, view:'edit'
            return
        }

        codigoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Codigo.label', default: 'Codigo'), codigoInstance.id])
                redirect codigoInstance
            }
            '*'{ respond codigoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Codigo codigoInstance) {

        if (codigoInstance == null) {
            notFound()
            return
        }

        codigoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Codigo.label', default: 'Codigo'), codigoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'codigoInstance.label', default: 'Codigo'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
