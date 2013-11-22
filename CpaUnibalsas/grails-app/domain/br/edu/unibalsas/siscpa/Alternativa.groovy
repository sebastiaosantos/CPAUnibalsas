package br.edu.unibalsas.siscpa

import java.io.Serializable;

class Alternativa implements Serializable {

    static constraints = {
    }
	String descricao
	
	String toString(){
		return descricao;
	}
}



