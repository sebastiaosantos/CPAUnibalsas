package br.edu.unibalsas.siscpa

import java.io.Serializable;

class Avaliador implements Serializable {

    static constraints = {
		nome(nullable:false)
    }
	
	static reportable = [:]
	
	
	String nome
	
}
