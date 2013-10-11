package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class SeedController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Seed.list(params), model:[seedInstanceCount: Seed.count()]
    }

    def show(Seed seedInstance) {
        respond seedInstance
    }

    def create() {
        respond new Seed(params)
    }

    @Transactional
    def save(Seed seedInstance) {
        if (seedInstance == null) {
            notFound()
            return
        }

        if (seedInstance.hasErrors()) {
            respond seedInstance.errors, view:'create'
            return
        }

        seedInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'seedInstance.label', default: 'Seed'), seedInstance.id])
                redirect seedInstance
            }
            '*' { respond seedInstance, [status: CREATED] }
        }
    }

    def edit(Seed seedInstance) {
        respond seedInstance
    }

    @Transactional
    def update(Seed seedInstance) {
        if (seedInstance == null) {
            notFound()
            return
        }

        if (seedInstance.hasErrors()) {
            respond seedInstance.errors, view:'edit'
            return
        }

        seedInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Seed.label', default: 'Seed'), seedInstance.id])
                redirect seedInstance
            }
            '*'{ respond seedInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Seed seedInstance) {

        if (seedInstance == null) {
            notFound()
            return
        }

        seedInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Seed.label', default: 'Seed'), seedInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'seedInstance.label', default: 'Seed'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
