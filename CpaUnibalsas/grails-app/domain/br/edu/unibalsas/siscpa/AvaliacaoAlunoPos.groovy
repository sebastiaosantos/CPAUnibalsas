package br.edu.unibalsas.siscpa

class AvaliacaoAlunoPos extends Avaliacao implements Serializable {
	
		static constraints = {
		curso(validator: {return (it.tipo == "P�s-Gradua��o")})
		}
	
		Curso curso
	
		int periodo
	
	}
	