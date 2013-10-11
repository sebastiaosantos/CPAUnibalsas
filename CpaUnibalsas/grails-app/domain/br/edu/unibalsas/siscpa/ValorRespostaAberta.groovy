package br.edu.unibalsas.siscpa


import java.io.Serializable;

class ValorRespostaAberta extends ValorResposta implements Serializable {

	
	static constraints = {
		texto(maxSize:1200)
	}
	
	String texto
}
