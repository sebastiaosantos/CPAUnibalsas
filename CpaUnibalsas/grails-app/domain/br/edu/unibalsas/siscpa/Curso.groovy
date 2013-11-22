package br.edu.unibalsas.siscpa
class Curso implements Serializable{
	
		
		static constraints = {
		tipo(inList:["Graduação", "Pós-Graduação"], nullable:true)
		//nome(unique:true)
		}
		
		static hasMany = [turmas: Turma]
		
		String nome
	
		String tipo
		
		@Override
		public String toString() {
		// TODO Auto-generated method stub
		return(nome);
		}
	}
	