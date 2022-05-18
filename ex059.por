programa
{	/*
	assunto:	exercício 59 - sobre Vetor:
				Faça um programa que calcule notas de 6 alunos:
				Pergunte qual a nota de cada aluno;
				Dê a média de todas as notas;
				Mostre quais os alunos que ficaram acima da média.
				
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	funcao inicio()
	{	// CAPA
		escreva("{ EXERCÍCIO 059 - Acima da Média }\n")
		escreva("-------------------------------------\n")
		escreva("\tESCOLA PING-PONG\n")
		escreva("-------------------------------------\n")
		// DECLARAÇÃO DE VARIÁVEIS
		real nota[6], s = 0.0
		cadeia teclado
		// PERCURSO PARA PREENCHIMENTO DE DADOS 
		para (inteiro pos = 0; pos < u.numero_elementos(nota); pos++) {
			// VALIDAÇÃO DE DADOS
			enquanto (verdadeiro) {
				escreva("Nota do Aluno " + pos + ": ") 
				leia(teclado)
				se (t.cadeia_e_real(teclado) ou t.cadeia_e_inteiro(teclado, 10)) {
					nota[pos] = t.cadeia_para_real(teclado)
					se (nota[pos] >= 0.0 e nota[pos] <= 10.0) {
						s += nota[pos]
						pare
					} senao { // Caso não esteja entre 0 e 10:
						escreva("<<ERRO>> Digite uma nota válida.\n")
					}
				} senao {	// Caso não seja um número:
					escreva("<<ERRO>> Digite uma nota válida.\n")
				}
			}
		}
		// SAÍDA DE RESULTADOS
		real m = s / u.numero_elementos(nota)
		escreva("-------------------------------------\n")		
		escreva("A média da turma foi " + m.arredondar(m, 2))
		escreva("\n-------------------------------------\n")
		escreva("Os alunos que ficaran acima da média: \n")
		escreva("\t")
		// PERCURSO PARA PESQUISAR OS VALORES ACIMA DA MÉDIA
		para (inteiro pos = 0; pos < u.numero_elementos(nota); pos++) {
			se (nota[pos] > m) {
				u.aguarde(900)
				escreva(pos + " ")
			}
		}
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1780; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */