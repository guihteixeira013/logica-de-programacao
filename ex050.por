programa
{	
	inclua biblioteca Util --> u
	funcao inicio()
	{	// CAPA
		escreva("{ EXERCÍCIO 050 - Tabuadas }\n\n")
		// DECLARAÇÃO DE VARIÁVEIS
		inteiro ini, fim
		// ENTRADA DE DADOS
		escreva("Tabuada INICIAL = ")
		leia (ini)
		escreva("Tabuada FINAL = ")
		leia (fim)
		// SAÍDA DE RESULTADOS
		enquanto (ini <= fim) {
			escreva("\n----------------------------")
			escreva("\n\tTABUADA DE " + ini)
			escreva("\n----------------------------")
			ini ++
			u.aguarde(700)
			// ANINHAMENTO
			inteiro c = 1
			enquanto (c <= 10) {
				escreva("\n" + ini + " x " + c + " = " + (ini * c))	// ex -> 1 x 4 = 4 //
				c ++
			}
		}
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 22; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */