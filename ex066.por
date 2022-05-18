programa
{	/*
	ASSTUNTO:	Ex066 - Matriz 3x3:
					- Declare uma matriz 3x3;
					- Preencha esta matriz através de teclado, mostrando qual o devido índice que será preenchido;
					- Analise e procurar o maior valor na matriz;
						- Mostre na tela todos os valores da matriz;
						- Mostre qual o maior valor;
							- Mostre em quais posições o maior valor foi encontrado;
	AUTOR:	Guilherme Teixeira
	EMPRESA:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{		// Capa
		escreva("{ EXERCÍCIO 066 - Matriz 3x3 }\n")
			// Declarando Matriz
		inteiro matriz[3][3]
			// Preenchendo matriz
		para (inteiro l = 0; l < u.numero_linhas(matriz); l++) {
			para (inteiro c = 0; c < u.numero_colunas(matriz); c++) {
				escreva("Digite um valor para a posição [" + l + "][" + c + "]: ")
				//leia(matriz[l][c])
					// para testes:
				matriz[l][c] = sorteia(1, 10)
				escreva((matriz[l][c]) + "\n")
			}
		}
		u.aguarde(500)
		escreva("[Procurando pelo maior valor...]\n")
			// mostrando valores da matriz
		inteiro maior = matriz[0][0]
		para (inteiro l = 0; l < u.numero_linhas(matriz); l++) {
			para (inteiro c = 0; c < u.numero_colunas(matriz); c++) {
					// analisando qual os maiores números
				se (matriz[l][c] > maior) maior = matriz[l][c]
					// mostrando valores da matriz na tela
				u.aguarde(500)
				escreva(matriz[l][c] + " -->\t")
			}
			escreva("... \n")
		}
		escreva("ANALISADO!\n")
		u.aguarde(2000)
		escreva("------------------------------------------------------\n")
		escreva("MAIOR valor encontrado: " + maior + "\n")
		escreva("------------------------------------------------------\n")
		u.aguarde(1000)
			// Mostrando as posições dos maiores valores da matriz
		escreva("Valor " + maior + " encontrado nas posições: \n")
		para (inteiro l = 0; l < u.numero_linhas(matriz); l++) {
			para (inteiro c = 0; c < u.numero_colunas(matriz); c++) {
				u.aguarde(500)
				se (matriz[l][c] == maior) {
					escreva("[" + l + "][" + c + "] --> ")
				}
			}
		}
		escreva("FIM!")

		
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1393; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */