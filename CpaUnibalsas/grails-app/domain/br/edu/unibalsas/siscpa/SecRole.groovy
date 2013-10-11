package br.edu.unibalsas.siscpa

class SecRole {
	
		String authority
	
		static mapping = {
			cache true
		}
	
		static constraints = {
			authority blank: false, unique: true
		}
	}
	