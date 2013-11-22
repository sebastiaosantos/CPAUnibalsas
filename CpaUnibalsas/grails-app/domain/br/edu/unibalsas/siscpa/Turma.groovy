package br.edu.unibalsas.siscpa


class Turma implements Serializable {

	static constraints = {
	}
	
	static belongsTo = {curso: Curso}
	
	static reportable = [:]
	
	Curso curso
	
	String codigo
	
	String nome
	
	Professor professor
	
	int periodo
	
	@Override
	public String toString() {
	// TODO Auto-generated method stub
	return(nome);
	}
}

