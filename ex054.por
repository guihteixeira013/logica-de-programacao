programa
{	/*
	assunto:	ex54: Pessoas Validas... 
				Crie um programa que cadastre Pessoas:
				Pedindo o dados e VALIDAﾃ�ﾃ髭S:
				= Nome;
				= Idade;
				= CONTINUAﾃ�ﾃグ.
				No final, indique:
				- QUANTOS foram cadastrados;
				- QUEM foi o mais VELHO, e sua idade;
				- QUEM foi o mais JOVEM, e sua idade.
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> t
	funcao inicio()
	{	//	DECLARANDO VARIﾃ〃EIS
		inteiro tot = 0, idd = 0
		cadeia teclado, nome = " "
		caracter resp = ' '
		
		cadeia velho = "", jovem = ""
		inteiro iddV = 0, iddJ = 0
		//	CAPA EXERCﾃ垢IO
		escreva("{ EXERCÍCIO 054 - Pessoas Validadas }\n")
		
		faca {	// CAPA DA REPETIﾃ�ﾃグ
			escreva("----------------------------------------\n")		
			escreva("\t\tPESSOA " + (tot+1)  + "\n")
			escreva("----------------------------------------\n")
		//	VALIDANDO NOME	
			enquanto (verdadeiro) {					
				escreva("Nome: ")	// entrada teclado nome
				leia(teclado)
				se (txt.numero_caracteres(teclado) >= 3) {
					nome = teclado
					pare
				} senao {
					se (t.cadeia_e_inteiro(teclado, 10)) {
						escreva("<<ERRO>> Digite um nome válido.\n")
					} senao {
						se (txt.numero_caracteres(teclado) < 3) {
							escreva("<<ERRO>> Digite mínimo de 3 letras.\n")
						}
					}
				}
			}
		//	VALIDANDO IDADE
			enquanto (verdadeiro) {					
				escreva("Idade: ")	// Entrada teclado nome
				leia(teclado)
				se (t.cadeia_e_inteiro(teclado, 10)) {			
					idd = t.cadeia_para_inteiro(teclado, 10)
					se (idd <= 0 ou idd >= 130) {
						escreva("<<ERRO>> Digite uma idade válida.\n")
					} senao {
						pare
					}
				} senao {
					escreva("<<ERRO>> A idade deve ser um número inteiro.\n")
				}
			}
		//	TESTE VELHOS E JOVENS
			se (tot == 0) {
				jovem = nome
				velho = nome
				iddJ = idd
				iddV = idd			
			} senao {
				se (idd > iddV) {
					iddV = idd
					velho = nome
				} senao {
					se (idd < iddJ) {
						iddJ = idd
						jovem = nome
					}
				}
			}
		//	VALIDANDO CONTINUAﾃ�ﾃグ
			enquanto (verdadeiro) {
				escreva("Deseja continuar? [S/N] ")
				leia(teclado)
				se (t.cadeia_e_caracter(teclado)) {
					resp = t.cadeia_para_caracter(teclado)
					se (resp == 'S' ou resp == 's' ou resp == 'N' ou resp == 'n') {
						pare
					} senao {
						escreva("<<ERRO>> Digite apenas S ou N.\n")
					}
				} senao {
					escreva("<<ERRO>> Digite apenas um caracter.\n")
				}
			}
			tot++	// +1 cadastro realizado
		} enquanto (resp == 'S' ou resp == 's')
		//	SAﾃ好A DE RESULTADOS
		escreva("\n================= RESULTADO =================\n")
		escreva("Ao todo, você cadastrou " + tot + " pessoas.\n")
		escreva(velho + " é a pessoa mais velha, com " + iddV + " anos\n")
		escreva(jovem + " é a pessoa mais jovem, com " + iddJ + " anos\n")
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2639; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */