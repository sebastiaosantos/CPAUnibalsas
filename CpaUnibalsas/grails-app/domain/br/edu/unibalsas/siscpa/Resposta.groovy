package br.edu.unibalsas.siscpa

class Resposta implements Serializable{
	
		static constraints = {
		}
		
		Questao questao
		
		ValorResposta valorResposta
		
		static belongsTo = [avaliacao:Avaliacao]
		
	}
	