programa
{	/*
	ASSUNTO:	Ex065 - Somador de colunas
					- criar matriz 4x4;
					- preencher a matriz por sorteia;
					- mostrar na tela os valores da matriz, formatado;
					- Mostrar o resultado da soma de cada coluna da matriz.
	AUTOR:	Guilherme Teixeira
	EMPRESA:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{	// Capa
		escreva("{ EXERCÍCIO 065 - Somador de Colunas }\n\n")
		// Declarando matriz
		inteiro matriz[4][4]
		// Preenchendo matriz e mostrando a matriz
		escreva("A matriz gerada foi:\n\n")
		para (inteiro l = 0; l < u.numero_linhas(matriz); l++) {
			para (inteiro c = 0; c < u.numero_colunas(matriz); c++) {
				matriz[l][c] = sorteia(1, 10)
				escreva(matriz[l][c] + "\t")
			}
			escreva("\n")
		}
		escreva("\n------------------------------------------\n")
		// mostrando somas das colunas da matriz
		inteiro soma = 0
		para (inteiro c = 0; c < u.numero_linhas(matriz); c++) {
			soma = 0
			escreva("Somando a colunas " + c + " : ")
			para (inteiro l = 0; l < u.numero_colunas(matriz); l++) {
				soma += matriz[l][c]
				escreva(matriz[l][c])
				se (l == u.numero_linhas(matriz) -1) {
					escreva(" = ")
				} senao {
					escreva(" + ")
				}
			}
			escreva(soma)
			escreva("\n")
		}
		escreva("------------------------------------------\n\n")		
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1096; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 16, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */