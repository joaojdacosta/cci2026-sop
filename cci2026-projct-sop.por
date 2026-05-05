/**
 * AUTORES: Grupo XX, turma YYYY
 * 
 * Número1 - Nome1 (primeiro e último) 
 * Número2 - Nome2 (primeiro e último) 
 * Número3 - Nome3 (primeiro e último) 
 * Número4 - Nome4 (primeiro e último) 
 * Número5 - Nome5 (primeiro e último) 
 * 
 * DESCRIÇÃO:
 * 
 * Trabalho Académico da unidade curricular de Computação Científica I:
 * 
 * Pretende-se desenvolver um Sistema de Orçamento Pessoal - SOP.
 */
programa
{
	inclua biblioteca Texto --> t
	inclua biblioteca Tipos --> tp
	
	funcao inicio()
	{
		//declaração de variáveis
		cadeia cmd //armazena o texto
		
		//Passa 1: receber um texto.
		leia(cmd)
		
		//Passo 2: extrair no texto o primeiro caractere.
		cadeia c = t.extrair_subtexto(cmd,0,1)
		
		//Passo 3: determinar se o caractere corresponde a um comando válido.
		caracter opcao = Tipos.cadeia_para_caracter(c)
		escolha(opcao){
			caso 'i':
				// [TO-DO] Passo 4.1: extrair os argumentos do comando.
				se(nao inserir(cmd))
					escreva("\nArgumento do comando é inválido.\n")
				pare
				
			caso 'l':
				listar(cmd)
				pare
				
			caso 'r':
				// [TO-DO] Passo 4.1: extrair os argumentos do comando.
				escreva("\nComando: r") 
				pare
				
			caso 'b':
				// [TO-DO] Passo 4.1: extrair os argumentos do comando.
				escreva("\nComando: b") 
				pare
				
			caso 'm':
				// [TO-DO] Passo 4.1: extrair os argumentos do comando.
				escreva("\nComando: m") 
				pare
				
			caso 'v':
				// [TO-DO] Passo 4.1: extrair os argumentos do comando.
				escreva("\nComando: v") 
				pare
				
			caso 'w':
				// [TO-DO] Passo 4.1: extrair os argumentos do comando.
				escreva("\nComando: w") 
				pare
		
			//Passo 5.1: apresentar a mensagem comando inválido.
			caso contrario:
				escreva("\nComando inválido!")
		}

	
		//[TO-DO] Passo 6: voltar ao passo 1.
 
	}

	/***
	 * Descrição:
	 * 	Insere um novo movimento no sistema de orçamento pessoal.
	 * 	
	 * Parâmetros:
	 * 	cmd: texto que corresponde ao dado de entrada 
	 * 		(comando digitado pelo utilizador).
	 * 		
	 * Retorna:
	 * 	Retorna o valor verdadeiro caso o novo movimento é inserido
	 * 	com sucesso e retorna falso caso contrário.
	 */
	funcao logico inserir(cadeia cmd)
	{
		//argumentos do comando inserir movimento "i"
		real valor
		inteiro data
		inteiro periodo
		caracter tipo 
		cadeia descricao 
		
		// variáveis auxiliares
		inteiro i // variáveis para iteração 
		inteiro tamanho // número de caracteres do texto de entrada
		logico t = verdadeiro // valor de retorno, falso para insucesso
		cadeia temp // valor temporario

		// obtem o número de caracteres do texto passado como comando
		tamanho = t.numero_caracteres(cmd)

		// i valor data periodo tipo descrição
		// exemplo: i 100 0 30 r Mesada
		
		// Passo 1: Obter o valor
		para(i = 2; i < tamanho; i++)
			se(t.obter_caracter(cmd, i) == ' ')
				pare
		// extracção do subtexto correspondente ao valor/montante
		temp = t.extrair_subtexto(cmd,2,i)
		// Apenas número pode ser inserido para atributo valor/montante
		se(nao tp.cadeia_e_real(temp)) 
			retorne falso

		//como é numero inteiro, precisa converter para inteiro
		valor = tp.cadeia_para_real(temp)

		// Passo 2: Obter a descricao

		// começa por procurar a posição do caracter espaço
		// procura do fim para o princípio
		para(i = tamanho - 1; 
				t.obter_caracter(cmd, i) != ' '; 
					i--){}
		// extrai o subtexto correspondente a descrição
		descricao = t.extrair_subtexto(cmd,i + 1, tamanho)
		// o numero de caractere não pode ser superior a 60
		se(t.numero_caracteres(descricao) > 60)
 			retorne falso
		//extrai o subtexto correspondente ao tipo
		temp = t.extrair_subtexto(cmd,i - 1, i)	
		tipo = Tipos.cadeia_para_caracter(temp)

 		escreva("\n\n=== Argumentos do comando ===\n")
 		escreva("\nValor: ", valor)
 		// data - por extrair
 		// periodicidade - por extrair
 		escreva("\nTipo: ", tipo)
		escreva("\nDescricao: ", descricao,"\n")
		
		retorne t
	}

	/***
	 * Descrição:
	 * 	Mostrar todos os movimentos ocorridos numa determinada data.
	 * 	
	 * Parâmetros:
	 * 	cmd: texto que corresponde ao dado de entrada 
	 * 		(comando digitado pelo utilizador).
	 * 		
	 * Retorna:
	 * 	Sem retorno.
	 */
	funcao vazio listar(cadeia cmd)
	{
		//Passo 4.1: extrair os argumentos do comando.

				// este comando tem apenas um argumento (um valor numérico)
				inteiro posicao_final = t.numero_caracteres(cmd)
				cadeia numero_em_texto = t.extrair_subtexto(cmd,2,posicao_final)

				//verifica se a cadeia corresponde a um número
				se(Tipos.cadeia_e_inteiro(numero_em_texto, 10)) 
				{
					//como é numero inteiro, precisa converter para inteiro
					inteiro data = Tipos.cadeia_para_inteiro(numero_em_texto, 10)
					se(data >= 0 e data <= 999)
						escreva ("\nData: ", data)
				}	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1026; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */