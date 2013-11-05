package br.edu.unibalsas.siscpa



class TipoDeQuestao implements Serializable {

	static constraints = {
	}
	
	String descricao
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return(descricao);
	}
}
