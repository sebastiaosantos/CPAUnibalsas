package br.edu.unibalsas.siscpa

class ObjetoAvaliado implements Serializable{
	
		static constraints = {
		}
		
		static reportable = [:]
		
		static hasMany = [ blocoDeQuestoes : BlocoDeQuestoes ]
		
		//BlocoDeQuestoes blocoDeQuestoes
		
		String nome
		
		@Override
		public String toString() {
		// TODO Auto-generated method stub
		return(nome);
		}
	}
	