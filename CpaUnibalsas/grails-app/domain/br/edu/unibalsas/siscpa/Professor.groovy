package br.edu.unibalsas.siscpa

class Professor implements Serializable{
	
		static constraints = {}
		
		static reportable = [:]
		
		String nome
		
		@Override
		public String toString() {
		// TODO Auto-generated method stub
		return(nome);
		}
	}

	