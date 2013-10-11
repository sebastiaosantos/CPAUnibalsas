package br.edu.unibalsas.siscpa


import java.io.Serializable;

enum  TipoAvaliador implements Serializable {

	
	Aluno("Aluno"),Professor("Professor");
	
	final String value;
	
	TipoAvaliador(String value) {
	   this.value = value;
	}
	
	String toString() {
	   value
	}
	
	String getKey() {
	   name()
	}
	
}
