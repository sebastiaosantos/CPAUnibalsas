package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CPAController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CPA.list(params), model:[CPAInstanceCount: CPA.count()]
    }

    def show(CPA CPAInstance) {
        respond CPAInstance
    }

    def create() {
        respond new CPA(params)
    }

    @Transactional
    def save(CPA CPAInstance) {
        if (CPAInstance == null) {
            notFound()
            return
        }

        if (CPAInstance.hasErrors()) {
            respond CPAInstance.errors, view:'create'
            return
        }

        CPAInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'CPAInstance.label', default: 'CPA'), CPAInstance.id])
                redirect CPAInstance
            }
            '*' { respond CPAInstance, [status: CREATED] }
        }
    }

    def edit(CPA CPAInstance) {
        respond CPAInstance
    }

    @Transactional
    def update(CPA CPAInstance) {
        if (CPAInstance == null) {
            notFound()
            return
        }

        if (CPAInstance.hasErrors()) {
            respond CPAInstance.errors, view:'edit'
            return
        }

        CPAInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CPA.label', default: 'CPA'), CPAInstance.id])
                redirect CPAInstance
            }
            '*'{ respond CPAInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CPA CPAInstance) {

        if (CPAInstance == null) {
            notFound()
            return
        }

        CPAInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CPA.label', default: 'CPA'), CPAInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'CPAInstance.label', default: 'CPA'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
