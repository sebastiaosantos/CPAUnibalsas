package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AvaliacaoComunidadeExternaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond AvaliacaoComunidadeExterna.list(params), model:[avaliacaoComunidadeExternaInstanceCount: AvaliacaoComunidadeExterna.count()]
    }
	
	def list(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		  respond AvaliacaoComunidadeExterna.list(params), model:[avaliacaoComunidadeExternaInstanceCount: AvaliacaoComunidadeExterna.count()]
	}
	

    def show(AvaliacaoComunidadeExterna avaliacaoComunidadeExternaInstance) {
        respond avaliacaoComunidadeExternaInstance
    }

    def create() {
        respond new AvaliacaoComunidadeExterna(params)
    }

    @Transactional
    def save(AvaliacaoComunidadeExterna avaliacaoComunidadeExternaInstance) {
        if (avaliacaoComunidadeExternaInstance == null) {
            notFound()
            return
        }

        if (avaliacaoComunidadeExternaInstance.hasErrors()) {
            respond avaliacaoComunidadeExternaInstance.errors, view:'create'
            return
        }

        avaliacaoComunidadeExternaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'avaliacaoComunidadeExternaInstance.label', default: 'AvaliacaoComunidadeExterna'), avaliacaoComunidadeExternaInstance.id])
                redirect avaliacaoComunidadeExternaInstance
            }
            '*' { respond avaliacaoComunidadeExternaInstance, [status: CREATED] }
        }
    }

    def edit(AvaliacaoComunidadeExterna avaliacaoComunidadeExternaInstance) {
        respond avaliacaoComunidadeExternaInstance
    }

    @Transactional
    def update(AvaliacaoComunidadeExterna avaliacaoComunidadeExternaInstance) {
        if (avaliacaoComunidadeExternaInstance == null) {
            notFound()
            return
        }

        if (avaliacaoComunidadeExternaInstance.hasErrors()) {
            respond avaliacaoComunidadeExternaInstance.errors, view:'edit'
            return
        }

        avaliacaoComunidadeExternaInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'AvaliacaoComunidadeExterna.label', default: 'AvaliacaoComunidadeExterna'), avaliacaoComunidadeExternaInstance.id])
                redirect avaliacaoComunidadeExternaInstance
            }
            '*'{ respond avaliacaoComunidadeExternaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(AvaliacaoComunidadeExterna avaliacaoComunidadeExternaInstance) {

        if (avaliacaoComunidadeExternaInstance == null) {
            notFound()
            return
        }

        avaliacaoComunidadeExternaInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'AvaliacaoComunidadeExterna.label', default: 'AvaliacaoComunidadeExterna'), avaliacaoComunidadeExternaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'avaliacaoComunidadeExternaInstance.label', default: 'AvaliacaoComunidadeExterna'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
