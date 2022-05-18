programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u
	funcao inicio()
	{	// CAPA
		escreva("{ EXERCÍCIO 062 - Listagem de Dados }\n")
		// DECLARANDO VARIÁVEIS
		cadeia nome[2], teclado
		real sal[2]
		caracter sexo[2]
		// PERCURSO DE PREENCHIMENTO para NOME, SEXO, SALARIO
		para (inteiro pos = 0; pos < u.numero_elementos(nome); pos ++) {
			escreva("============ CADASTRO " + pos + " ============\n")
			//	VALIDANDO DADOS DE NOME
			enquanto (verdadeiro) {
				escreva("Nome: ")
				leia(teclado)	
				// I VALIDANDO TIPO
				se (t.cadeia_e_inteiro(teclado, 10)) escreva("<<ERRO>> Número não são permitidos, escreva um nome válido.\n") 
				senao se (t.cadeia_e_real(teclado)) escreva("<<ERRO>> Números não são permitidos, escreva um nome válido.REAL\n")
				senao se (t.cadeia_e_logico(teclado)) escreva("<<ERRO>> Insira um nome válido.\n")
				senao se (t.cadeia_e_caracter(teclado)) escreva("<<ERRO>> Caracteres não são permitidos.\n")
				senao {	// II VALIDANDO CADEIA
					caracter space = ' '
					se (txt.obter_caracter(teclado, 0) == space) escreva("<<ERRO>> Preencha corretamento o campo 'NOME'.\n")
					senao {
						nome[pos] = teclado
						pare
					}
			}
			}
			//	VALIDANDO DADOS DE SEXO
			enquanto (verdadeiro) {
				escreva("Sexo [M/F]: ")
				leia(teclado)
				//	VALIDANDO TIPOS
				se (t.cadeia_e_caracter(teclado)) {
					caracter space = ' '
					se (txt.obter_caracter(teclado, 0) == space) escreva ("<<ERRO>> Preencha corretamento o campo 'SEXO'.\n")
					senao se (t.cadeia_e_inteiro(teclado, 10)) escreva("<<ERRO>> Digite somente [M ou F].\n")
					senao se (txt.caixa_alta(teclado) == "M" ou txt.caixa_alta(teclado) == "F") {
						teclado = txt.caixa_alta(teclado)
						sexo[pos] = t.cadeia_para_caracter(teclado)
						pare
					} senao {
						escreva("<<ERRO>> Digite somente [M OU F].\n")
					}
				} senao {
					escreva("<<ERRO>> Preencha corretamento o campo 'SEXO'.\n")
				}
			}
			//	VALIDANDO DADOS DE SALÁRIO
			enquanto (verdadeiro) {
				escreva("Salario: R$")
				leia(teclado)
				// VALIDANDO TIPOS
				se (t.cadeia_e_inteiro(teclado, 10) ou t.cadeia_e_real(teclado)){
					sal[pos] = t.cadeia_para_real(teclado)
					pare
				} senao {
					escreva("<<ERRO>> Digite um salário válido.\n")
				}
			}
		}
		limpa()		// Limpa a tela do console.
		escreva("\n\n\t\t LISTAGEM COMPLETA\n")
		escreva("--------------------------------------------------\n")
		escreva("NOME\t\t\tSEXO\tSALÁRIO\n")
		escreva("--------------------------------------------------")
		// PERCURSO DE PESQUISA para mostrar respectivamento NOMES, SEXO, SALARIOS.
		para (inteiro pos = 0; pos < u.numero_elementos(nome); pos++) {
			escreva("\n" + nome[pos] + "\t\t\t")
			escreva(sexo[pos])
			escreva("\tR$" + sal[pos])
		}
		
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2146; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */