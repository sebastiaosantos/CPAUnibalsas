package br.edu.unibalsas.siscpa

class AvaliacaoAlunoPos extends Avaliacao implements Serializable {
	
		static constraints = {
		curso(validator: {return (it.tipo == "Pós-Graduação")})
		}
	
		Curso curso
	
		int periodo
	
	}
	