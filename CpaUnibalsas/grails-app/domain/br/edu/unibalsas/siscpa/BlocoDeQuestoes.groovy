package br.edu.unibalsas.siscpa


class BlocoDeQuestoes implements Serializable{
	
		static constraints = {
		}
		
		static belongsTo = [objetoAvaliado: ObjetoAvaliado]
							
		static hasMany = [questoes:Questao]
		
		static reportable = [:]
		
		String descricao
		
		ObjetoAvaliado objetoAvaliado
		
		SortedSet questoes
		
	}
	