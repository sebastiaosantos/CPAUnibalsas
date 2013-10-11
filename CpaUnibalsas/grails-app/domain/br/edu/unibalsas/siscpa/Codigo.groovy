package br.edu.unibalsas.siscpa

class Codigo implements Serializable{
	
		static constraints = {
			texto unique:true
		}
		
		String texto
		
		String avaliador
		
		boolean usado
		
		
		
		
	}
	