package br.edu.unibalsas.siscpa

class AvaliacaoAluno  extends Avaliacao implements Serializable {
	
		static constraints = {
		}
		
		static reportable = [:]
		
	
		Curso curso
		
		int periodo
		
		//static hasMany = {turmas: Turma}
		
	}
	