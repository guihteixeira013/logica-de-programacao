programa
{	/*
	assunto:	exercicio 45 - Jogo de adivinhação:
				Adivinhe o número de 0 a 10 que a máquina esta pensando.
				Você terá apenas 3 chances para acertar.
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{	//ESCOPO
		escreva("{ EXERCÍCIO 044 - Sorteando e leando valores }\n")
		//DECLARANDO VARIÁVEIS
		inteiro max = 3, chance = 1, palpite, resp = sorteia(1 , 10)
		logico acertou = falso
		//REPETIÇÃO
		faca {
			escreva("\n---------------------------------------------------")
			escreva("\nChance " + chance + " / 3")
			escreva("\nQual é seu palpite? ")
			leia(palpite)
			//ANALISANDO
			se (palpite == resp) {
				acertou = verdadeiro
				escreva("\n[PARABÉNS! Você acetou o número em " + chance + " tentativa(s)!]")
				pare
			} senao {
				escreva("\nINFELIZMENTE ainda não foi dessa vez...")
				chance ++
				u.aguarde(1000)
				se (chance <= max) {
					escreva("\nMas vou te dar outra chance...")
					u.aguarde(1000)
					se (palpite > resp) {
						escreva("\nChute um valor MENOR!")
					} senao { 
						escreva("\nChute um valor MAIOR!")
					}
				} senao {
					escreva("\nSuas chances ACABARAM! :(")
					pare
				}
			}
			u.aguarde(800)
		} enquanto (nao acertou)
		u.aguarde(1000)
		escreva("\n\n=================== FIM DE JOGO ===================")
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1276; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */