programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{	
		// CAPA
		escreva("{ EXERCÍCIO 068 - Campo Minado }\n\n")
		escreva("=========================================\n")
		escreva("            CAMPO MINADO v1.0			\n")
		escreva("=========================================\n")
		// Declarando matriz
		caracter jogo[4][4]
		// Preenchando matriz
		para (inteiro l = 0; l < u.numero_linhas(jogo); l++) {
			para (inteiro c = 0; c < u.numero_colunas(jogo); c++) {
				jogo[l][c] = '-'
			}
		}
		// SORTEANDO AS BOMBAS 
		inteiro quant = 5 	// quantidade de bombas que terá no jogo
		inteiro pL, pC 	// posições de Linha e Coluna que serão sorteadas as bombas
		inteiro bomba = 0				// neste momento, não há bomba colocada ainda
		enquanto (bomba < quant) {		// Irá executar até colocar o número de bombas indicado
			pL = sorteia(0, u.numero_linhas(jogo)-1)
			pC = sorteia(0, u.numero_colunas(jogo)-1)
			se (jogo[pL][pC] == '-') {	// SE o índice sorteado conter o '-', quer dizer que ainda não há bomba, então poderá colocar bomba neste local.
				jogo[pL][pC] = 'O'		
				bomba++				// mais uma bomba colocada
			}
		}

		// Iniciando o JOGO
		inteiro total = 3, tentativas = 1, pontos = 0  // (total) MAX de chances de jogada, (tentativas) Tentativa atual do jogador, (pontos) pontos atuais do jogador.
		inteiro lin, col						// Entrada de dados para o jogador indicar onde quer jogar: (lin) LINHA, (col) COLUNA.
		logico bum = falso						// (bum) Quando acercar alguma bomba.
		enquanto (tentativas < total ou pontos < total*2) {
			// Mostrando o tabuleiro com ???
			escreva("-----------------------------------------\n")
			para (inteiro l = 0; l < u.numero_linhas(jogo); l++) {
				escreva("\t\t")
				para (inteiro c = 0; c < u.numero_colunas(jogo); c++) {
					se (jogo[l][c] == '-' ou jogo[l][c] == 'O') {
						escreva("? ")
					} senao {
						escreva(jogo[l][c] + " ")
					}
				}
				escreva("\n")
			}
			escreva("-----------------------------------------\n")
			// Jogador joga
			escreva("Faça sua jogada! \t   (Tentativa: " + tentativas + ")\n")
			// Verificando se o jogador digitou um número correto, de acordo com o tamanho do campo minado (da matriz).
			faca {
				escreva("LINNHA = ")
				leia(lin)
			} enquanto (lin >= u.numero_linhas(jogo))	// SE o jogador digitou um número maior ou igual que o número de linhas do jogo, repetirá novamente.
			faca {
				escreva("COLUNA = ")
				leia(col)
			} enquanto (col >= u.numero_colunas(jogo))	// SE o jogador digitou um número maior ou igual que o número de colunas do jogo, repetirá novamente.
			// Verificando aonde esta jogada atingiu no campo minado
			se (jogo[lin][col] == 'O') {				// SE a jogada acertou uma bomba
				escreva("--> TIRO ERRADO! Você acertou uma BOMBA!\n")
				u.aguarde(2000)
				bum = verdadeiro
				jogo[lin][col] = '*'
				pare
			} senao se (jogo[lin][col] == '-') {		// SE a jogada acertou o mar
				escreva("--> TIRO CERTO! Parabéns...\n")
				jogo[lin][col] = 'V'
				tentativas ++	// contará como mais um tentativa
				pontos += 2	// somará mais 2 pontos
			} senao se (jogo[lin][col] == 'V') {		// SE a jogada acertou local já atingido
				escreva("Você já atirou nesta posição! Tente Novamente\n")
			}
			u.aguarde(2000)
			limpa()
		}
		limpa()
		escreva("==========================================\n")
		escreva("\t\tGAME OVER!\n")
		escreva("==========================================\n")
		// RESULTADO FINAL
		// Mostrando campo minado final
		para (inteiro l = 0; l < u.numero_linhas(jogo); l++) {
			escreva("\t\t")
			para (inteiro c = 0; c < u.numero_colunas(jogo); c++) {
				escreva(jogo[l][c] + " ")
			}
			escreva("\n")
		}
		// Verificando se o jogador VENCEU ou NÃO 
		se (bum) {
			escreva("VOCÊ NÃO GANHOU :(\n")
			
		} senao {
			escreva("VITÓRIA! VOCÊ GANHOU! :)\n")
		}
		u.aguarde(1000)
		escreva("Você fez " + pontos + " pontos em " + (tentativas-1) + " tentativas!\n\n")	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3052; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */