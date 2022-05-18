programa
{	/*
	assunto:	exercicio 053 - Faça um programa que leia vários valores pelo
		teclado e no final, mostre a SOMA entre eles.
		O programa também deverá fazer a validação dos dados de entrada:
			- O número digitado deve estar entre 1 e 10;
			- O usuário deverá responder se quer continuar. e o programa
				só aceitará as respostas S ou N.
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/

	inclua biblioteca Tipos --> t
	funcao inicio()
	{
		escreva("{ EXERCÍCIO 053 - Números Validados }\n")
		// DECLARAÇÃO DE VARIÁVEIS
		inteiro n = 0, c = 0, soma = 0
		cadeia teclado
		caracter resp = ' '
		
		faca {
			enquanto (verdadeiro) {	// VALIDANDO NÚMERO ENTRE 1 E 10. //
				escreva("---------------------------------\n")
				escreva("\t    VALOR " + (c+1) + "\n")
				escreva("---------------------------------\n")
				escreva("Digite um número (entre 1 e 10): ")
				leia(teclado)
				se (t.cadeia_e_inteiro(teclado, 10)) {
					n = t.cadeia_para_inteiro(teclado, 10)
					se (n >= 1 e n <= 10) {
						pare
					} senao {
						escreva("<<ERRO>> Digite um número entre 1 e 10!\n")
					}
				} senao {
					escreva("<<ERRO>> Digite um número inteiro!\n")
				}
			} 					// TÉRMINO 1ª VALIDAÇÃO //
			// ATIVIDADES 
			c++
			soma += n
								// VALIDANDO CONTINUAÇÃO //
			enquanto (verdadeiro) {
				escreva("\tQuer continuar? [S/N] ")
				leia(teclado)
				se (t.cadeia_e_caracter(teclado)) {
					resp = t.cadeia_para_caracter(teclado)
					se (resp == 'S' ou resp == 's' ou resp == 'N' ou resp == 'n') {
						pare
					} senao {
						escreva("<<ERRO>> Por favor, digite S ou N.\n")
					}
				} senao {
					escreva("<<ERRO>> Digite apenas uma letra.\n")
				}
			}					// TÉRMINO 2ª VALIDAÇÃO //
		} enquanto (resp == 's' ou resp == 'S')

		escreva("\n=================================")
		escreva("\nVocê digitou " + c + " valor(es).")
		escreva("\nA Soma dos números digitados é " + soma)
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1670; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */