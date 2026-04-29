programa
{
	inclua biblioteca Texto // biblioteca para manipulação de texto
	inclua biblioteca Tipos // biblioteca para manipulaçao de tipos de dado
	
	funcao inicio()
	{
		//exemplo de entrada: "i 30000 0 30 r Mesada"
		cadeia t // t representa o texto lido
		leia (t)

		//extrair o subtexto correspondente ao comando
		cadeia t2 = Texto.extrair_subtexto(t, 0, 1)
		//converter a cadeia para caracter para ser usado no escolha
		caracter op = Tipos.cadeia_para_caracter(t2)

		//identificar qual comando foi digitado
		escolha(op)
		{
			caso 'i': // comando i, permite inserir um movimento
				inserir(t) // procedimento inserir
				pare
			caso 'l': // comando l, mostrar os movimentos dada uma data
				escreva("Comando: ",t2,"\n")
				pare
			caso contrario: // captura comando invalidos
				escreva("Comando inválido!!!")
		}
		
	}

	/**
	 * Descrição:
	 * 	Permite inserir um movimento (receita ou despesa)
	 * 
	 * Parâmetro:
	 * 	texto - cadeia que representa um dado comando digitado pelo utilizador
	 * 	
	 * Autor: 
	 * 	João Costa (joao.costa@isptec.co.ao)
	 */
	funcao inserir(cadeia texto){
		//declaração de variáveis
		inteiro i, tamanho 
		
		//Passo 1: extrair o valor/montante do movimento
		
		//obter a quantidade de caracteres escritos no comando
		tamanho = Texto.numero_caracteres(texto)
		//identificar o último caracter correspondente ao último algarismo do valor		
		para(i = 2; i < tamanho; i++)
			/* Dado o formato: "i 30000 0 30 r Mesada"
			 * a partir da posição 2, o primeiro caracter espaço encontrado
			 * corresponde a posição final da cadeia correspondente ao valor do 
			 * movimento.
			 */
			se(Texto.obter_caracter(texto, i) == ' ')
				pare
		
		cadeia valor_subtexto = Texto.extrair_subtexto(texto, 2, i)
		inteiro montante = Tipos.cadeia_para_inteiro(valor_subtexto, 10)

		// valor do tipo inteiro extraído da cadeia correspondente ao comando
		escreva(montante, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1899; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */