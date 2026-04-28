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
	inclua biblioteca Tipos
	
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
				escreva("\nComando: i") 
				pare
				
			caso 'l':
				//Passo 4.1: extrair os argumentos do comando.

				// este comando tem apenas um argumento (um valor numérico)
				inteiro posicao_final = t.numero_caracteres(cmd)
				cadeia numero_em_texto = t.extrair_subtexto(cmd,2,posicao_final)

				//verifica se a cadeia corresponde a um número
				se(Tipos.cadeia_e_inteiro(numero_em_texto, 10)) 
				{
					//como é numero inteiro, precisa converter para inteiro
					inteiro data = Tipos.cadeia_para_inteiro(numero_em_texto, 10)
					escreva ("\nData: ", data)
				}
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2233; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */