programa
{	/*
	assunto:	ex061 - Crie um programa que analise os nomes dados.
				Crie um vetor com 6 posições;
				Crie entrada de dados em cadeia para prencher os valores do vetor;
					Comece a analise:
						Mostre os nomes (informe sua posição) com menos de 5 letras;
						Mostre o total deles.
							Mostre os nomes (informe sua posição) que comecem com vogal;
							Mostre o total deles.
								Mostre os nomes (informe sua posição) que tem a letra 'S' na palavra;
								Mostre o total deles.
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u
	funcao inicio()
	{	// Declarando variáveis
		cadeia nomes[6]
		// PERCURSO de preenchimento e validação dos valores do vetor.
		escreva("----------------------------------------------------------\n")
		para (inteiro pos = 0; pos < u.numero_elementos(nomes); pos++) {
			// Validando ENTRADA de dados 
			enquanto (verdadeiro) {
				escreva("Nome para a posição [" + pos + "]: ")
				leia(nomes[pos])
				se (t.cadeia_e_inteiro(nomes[pos],10) ou t.cadeia_e_caracter(nomes[pos]) ou t.cadeia_e_real(nomes[pos]) ou t.cadeia_e_logico(nomes[pos])) {
					escreva("<<ERRO>> Digite um nome válido.\n")
				} senao {
					se (txt.numero_caracteres(nomes[pos]) < 3) {
						escreva("<<ERRO>> Digite um nome válido.\n")
					} senao {
						pare
					}
				}
			}
		}
		u.aguarde(1000)
		escreva(" [" + u.numero_elementos(nomes) + " NOMES CADASTRADOS] \n")
		u.aguarde(1000)
		escreva("----------------------- ANALISANDO -----------------------\n")
		u.aguarde(2000)
		escreva("Nomes com menos de 5 letras...\n")
		// PERCURSO de pesquisa para valores com mais de 5 letras.
		inteiro tot5L = 0
		para (inteiro pos = 0; pos < u.numero_elementos(nomes); pos++) {
			se (txt.numero_caracteres(nomes[pos]) < 5 ) {
				escreva(" [" + pos + "] = " + nomes[pos])
				tot5L ++
				u.aguarde(400)
			}
		}
		escreva(" -----> TOTAL = " + tot5L + "\n")
		escreva("-----------------------------------------------------------\n")
		escreva("Nomes começando com vogal...\n")
		// PERCURSO de pesquisa para valores iniciadas com Vogais.
		inteiro totVOG = 0
		caracter primL
		para (inteiro pos = 0; pos < u.numero_elementos(nomes); pos++) {
			primL = txt.obter_caracter(txt.caixa_alta(nomes[pos]), 0)
			se (primL == 'A' 
			ou primL == 'E' 
			ou primL == 'I' 
			ou primL == 'O' 
			ou primL == 'U' ) {
				escreva(" [" + pos + "] = " + nomes[pos])
				totVOG ++	
				u.aguarde(400)
			}	
		}
		escreva(" -----> TOTAL = " + totVOG + "\n")
		escreva("-----------------------------------------------------------\n")
		escreva("Nomes que possuem a letra 'S':\n")
		// PERCURSO de pesquisa para descobri valores que contém letra S
		inteiro totS = 0
		para (inteiro pos = 0; pos < u.numero_elementos(nomes); pos++) {
			se (txt.posicao_texto("S", txt.caixa_alta(nomes[pos]), 0) != -1) {
				escreva(" [" + pos + "] = " + nomes[pos])
				totS ++
				u.aguarde(400)
			}
		}
		escreva(" -----> TOTAL = " + totS + "\n")
		escreva("-----------------------------------------------------------\n")
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 717; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */