programa
{	/*
	ASSUNTO:	Faça uma matriz 5x5;
			x Preecha matriz por sorteia;
			x Mostre na tela os valores da matriz;
			x SOME todos os valores;
			x MOSTRE na tela a MÉDIA dos valores somados;
			x SOMENTE NA SEGUNDA LINHA, mostre a posição dos valores que estão a cima da média;
				x Mostre quantas vezes ocorreu isto;
			- SOMENTE NA TERCEIRA COLUNA, mostre a posição dos valores que estão a baixo da média;
				- Mostre quantas vezes occorru isto.
	AUTOR:	Guilherme Teixeira
	EMPRESA:	Estudonauta
	*/
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u
	funcao inicio()
	{	// Capa
		escreva("{ EXERCÍCIO 067 - Média de Valores }\n\n")
		// Declarando Matriz
		inteiro matriz[5][5], soma = 0
		// Preenchendo matriz e mostrando na tela
		para (inteiro l = 0; l < u.numero_linhas(matriz); l++) {
			para (inteiro c = 0; c < u.numero_colunas(matriz); c++) {
				matriz[l][c] = sorteia(1, 10)
				soma += matriz[l][c]
				escreva(matriz[l][c] + "\t")
			}
			escreva("\n")
		}
		// Mostrando a média dos valores
		real med = t.inteiro_para_real(soma) / (u.numero_linhas(matriz) * u.numero_linhas(matriz))
		escreva("\n---------------------------------------------\n")
		escreva("A média dos valores gerado é " + m.arredondar(med, 2))
		escreva("\n---------------------------------------------\n")
		// Pesquisando e Mostrando os valores da 2ª linha que estão ACIMA da média
		inteiro totMai = 0
		escreva("Na segunda linha, os valores acima da média são:\n")
		para (inteiro c = 0; c < u.numero_colunas(matriz); c++) {
			se (matriz[1][c] > med) {
				escreva("[1]["+c+"] = "+matriz[1][c]+"\n")
				totMai++
			}
		}
		escreva("TOTAL = " + totMai + " ocorrência(s).\n")
		escreva("---------------------------------------------\n")
		// Pesquisando e Mostrando os valores da 3ª coluna que estão ABAIXO da média
		inteiro totMen = 0
		escreva("Na terceira coluna, os valores abaixo da média são:\n")
		para (inteiro l = 0; l < u.numero_linhas(matriz); l++) {
			se (matriz[l][2] < med) {
				escreva("["+l+"][2] = "+matriz[l][2]+"\n")
				totMen ++
			}
		}
		escreva("TOTAL = " + totMen + " ocorrência(s).\n")
		escreva("---------------------------------------------\n")
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1595; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */