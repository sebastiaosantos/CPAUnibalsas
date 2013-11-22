package br.edu.unibalsas.siscpa



import static org.springframework.http.HttpStatus.*
import javassist.expr.Instanceof;

import javax.management.InstanceAlreadyExistsException;

import grails.transaction.Transactional

@Transactional(readOnly = true)
class QuestaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Questao.list(params), model:[questaoInstanceCount: Questao.count()]
    }
	
	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Questao.list(params), model:[questaoInstanceTotal: Questao.count()]
    }
	

    def show(Questao questaoInstance) {
        respond questaoInstance
    }

    def create() {
        respond new Questao(params)
    }

    @Transactional
    def save(Questao questaoInstance) {
		println params
		//def alternativas = []
		
		params.alternativa.each{
			questaoInstance.addToAlternativas(new Alternativa(descricao: it)) 
		}
		//questaoInstance.alternativas = alternativas
        //println questaoInstance?.alternativas.descricao;
		if (questaoInstance == null) {
            notFound()
            return
        }

        if (questaoInstance.hasErrors()) {
            respond questaoInstance.errors, view:'create'
            return
        }

        questaoInstance.save flush:true

		
        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'questaoInstance.label', default: 'Questao'), questaoInstance.id])
                redirect questaoInstance
            }
            '*' { respond questaoInstance, [status: CREATED] }
        }
    }

    def edit(Questao questaoInstance) {
        respond questaoInstance
    }

    @Transactional
    def update(Questao questaoInstance) {
		
		println params
		def i = 0;
		
		def alternativaAdd = []
		
			 
		
		
		questaoInstance.alternativas.each{ qA ->
			boolean achou = false
			params.'alternativa.id'.eachWithIndex{ id, j ->
				println id
				if ( Long.parseLong(id) == qA.id ){
					achou = true
					qA.descricao = params.'alternativa.descricao'[j]
					
					
					
							
				}
			}
			if(achou){
				alternativaAdd << qA 
			}
			
		}
		
		questaoInstance.alternativas.clear();
		questaoInstance.alternativas = alternativaAdd;
		
		if (params.alternativaAdicionada instanceof String  ){
			questaoInstance.addToAlternativas(new Alternativa(descricao: params.alternativaAdicionada))
		}else {
		params.alternativaAdicionada.each{
			questaoInstance.addToAlternativas(new Alternativa(descricao: it))
		}
		}
		
			
		/*params.alternativa.each{
			questaoInstance.addToAlternativas(new Alternativa(descricao: it))
		}*/
		
	/*	def test = 0;
		
		if (params.alternativaAdicionada instanceof String == true) { 
			test = test + 1
		}
		
		if (params.alternativa instanceof String == true) {
			test = test + 1
		}
		
		if (test < 2 )
		{
			
			respond questaoInstance.errors, view:'edit'
			return  
		}
	*/ 
	   
        if (questaoInstance == null) {
            notFound()
            return
        }

        if (questaoInstance.hasErrors()) {
            respond questaoInstance.errors, view:'edit'
            return
        }

        questaoInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Questao.label', default: 'Questao'), questaoInstance.id])
                redirect questaoInstance
            }
            '*'{ respond questaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Questao questaoInstance) {

        if (questaoInstance == null) {
            notFound()
            return
        }

        questaoInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Questao.label', default: 'Questao'), questaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'questaoInstance.label', default: 'Questao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
