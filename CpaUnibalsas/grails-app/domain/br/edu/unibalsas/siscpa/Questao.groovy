package br.edu.unibalsas.siscpa


class Questao implements Comparable<Questao>, Serializable {
	
		static constraints = {
			descricao(maxSize:3000)
			questaoPai(nullable:true)
			respostaChave(nullable:true)
		}
		
		def static reportable = [:]
		
		int ordem
			
		String descricao
		
		TipoDeQuestao tipo
		
		static belongsTo = [blocoDeQuestoes: BlocoDeQuestoes]
	
		Questao questaoPai
	
		Integer respostaChave
	
		
		int compareTo(Questao q){
			
			if ( this.ordem == q.ordem) return 0
			else if (this.ordem > q.ordem) return 1
			else return -1
			
		}
		
		//static hasMany = [alternativas:Alternativa]
	}
	