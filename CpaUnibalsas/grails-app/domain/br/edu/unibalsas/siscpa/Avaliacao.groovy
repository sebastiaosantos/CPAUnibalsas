package br.edu.unibalsas.siscpa

//import cpa.Resposta

class Avaliacao implements Serializable {

	static constraints = {
	}
	
	static reportable = [:]
	

	//Set<Resposta> respostas
		
	static hasMany = [respostas:Resposta]

	CPA cpa
	
	long tempo
	
}
