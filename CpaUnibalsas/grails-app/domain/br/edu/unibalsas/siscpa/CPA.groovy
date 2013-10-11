package br.edu.unibalsas.siscpa

class CPA implements Serializable {
	
		static constraints = {
			//dataAbertura(nullable:false)
			//dataEnceramento(nullable:false)
			descricao(nullable:false)
			semestre(range:1..2,nullable:false)
			dataDeCriacao(nullable:false)
		}
		
		static reportable = [:]
		
		//SortedSet cursos
		
		static hasMany = [turmas: Turma, blocosDeQuestoes: BlocoDeQuestoes]
	
		int semestre
		
		Date dataDeCriacao
		
		String descricao
		
		TipoAvaliador tipoAvaliadorAtivo
		
		//Date dataAberturaFase1
		//Date dataEnceramentoFase1
		
		//Date dataAberturaFase2
		//Date dataEnceramentoFase2
		
		boolean ativa
		
	}
	