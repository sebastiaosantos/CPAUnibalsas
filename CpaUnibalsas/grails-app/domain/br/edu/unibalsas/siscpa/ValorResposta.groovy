package br.edu.unibalsas.siscpa


class ValorResposta implements Serializable{
	
		static constraints = {
		}
		
		
		static belongsTo = [resposta: Resposta]
	}
	