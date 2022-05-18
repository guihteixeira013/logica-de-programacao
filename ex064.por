programa
{	/*
	ASSUNTO:	#EX064 - Somador de linhas:
				- Crie uma matriz com  4 LINHAS, 4 COLUNAS;
				- Preencha a matriz por SORTEIA;
				- Mostre na tela, os valores da matriz, de forma que dê para entender;
				- Some e mostre na tela, o total de cada linha.
	
	AUTOR:	Guilherme Teixeira
	EMPRESA:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{	// Capa
		escreva("{ EXERCÍCIO 064 - Somador de Linhas }\n")
		// Declarando Variáveis
		inteiro matriz[4][4]
		// PERCURSO para preencher matriz.
		para (inteiro l = 0; l < u.numero_linhas(matriz); l++) {
			para (inteiro c = 0; c < u.numero_colunas(matriz); c++) {
				matriz[l][c] = sorteia(1, 10)
			}
		}
		// PERCURSO para mostrar os valores da matriz na tela
		para (inteiro l = 0; l < u.numero_linhas(matriz); l++) {
			para (inteiro c = 0; c < u.numero_colunas(matriz); c++) {
				escreva(matriz[l][c] + "\t")
			}
			escreva("\n")
		}
		escreva("-------------------------------------\n")
		// PERCURSO para somar e mostrar a tela as linhas
		inteiro soma = 0
		para (inteiro l = 0; l < u.numero_linhas(matriz); l++) {
			soma = 0
			escreva("Somando a linhas " + l + " : ")
			para (inteiro c = 0; c < u.numero_colunas(matriz); c++) {
				soma += matriz[l][c]
				escreva(matriz[l][c])
				se (c == u.numero_colunas(matriz) -1 ) {
					escreva(" = ")
				} senao {
					escreva(" + ")
				}
			}
			escreva(soma)
			escreva("\n")
		}
	}		
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matriz, 17, 10, 6}-{c, 20, 17, 1}-{c, 26, 17, 1}-{c, 37, 17, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */