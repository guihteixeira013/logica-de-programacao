programa
{
	inclua biblioteca Util --> u
	funcao analisar(inteiro num[])
	{	// capa
		escreva("========== ANALISANDO O VETOR ==========\n")

		// declarando variavel local
		inteiro tam = u.numero_elementos(num)
		
		escreva("O vetor possui " + tam + " elementos...\n")	
				
		escreva("Os elementos são:\n")
		// PERCURSO DE PESQUISA para mostrar todos os elementos do vetor
		para (inteiro p = 0; p < tam; p++) {
			escreva("  ["+p+"]-> "+num[p])
		}
		
		escreva("\nValores pares nas posições: ")
		// PERCURSO DE PESQUISA para identificar os número PARES
		para (inteiro p = 0; p < tam; p++) {
			se (num[p] % 2 == 0) {
				escreva("  " + p)
			}
		}
		
		escreva("\nValores ímpares nas posições:")
		// PERCURSO DE PESQUISA para identificar os número ÍMPARES
		para (inteiro c = 0; c < tam; c++) {
			se (num[c] % 2 != 0) {
				escreva("  " + c)
			}
		}
		escreva("\n========================================\n\n")
	}
	funcao inicio()
	{
		// declarando vetor
		inteiro vet[] = {2, 8, 7, 4, 3, 1}

		// analisando vetor por FUNÇÃO
		analisar(vet)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 660; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */