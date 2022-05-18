programa
{	/*
	ASSUNTO:	EX063 - Crie um programa que:
				- Cadastre 6 pessoas com, NOME e IDADE(quando perguntar sua idade, mostre o NOME inserido deste.);
				- Na Saída de Resultados, mostre a MÉDIA de idade de todos;
					- Mostre quem está a cima desta média(NOME e IDADE);
					- Mostre que tem a MAIOR IDADE do grupo.
	AUTOR:	Guilherme Teixeira
	EMPRESA:	Estudonauta
	*/
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u
	funcao inicio()
	{	// CAPA
		escreva("{ EXERCÍCIO 063 - Pessoas e Idades }\n")
		// Declarando Variáveis
		cadeia nome[6]
		inteiro idade[6], soma = 0
		// PERCURSO DE PREENCHIMENTO dos vetores
		para (inteiro pos = 0; pos < u.numero_elementos(nome); pos ++) {
			escreva("\nNome da pessoa [" + pos + "]: ")
			leia(nome[pos])
			escreva("Idade de " + nome[pos] + ": ")
			leia(idade[pos])
			soma += idade[pos]
		}
		// SAÍDA DE RESULTADOS
		u.aguarde(400)
		limpa()
		escreva("====== ANALISANDO AS " + u.numero_elementos(nome) + " PESSOAS CADASTRADAS ======")
		u.aguarde(2000)	
		real m = t.inteiro_para_real(soma) / u.numero_elementos(nome)
		// Mostrando na tela a MÉDIA DE IDADE.
		escreva("\nA média de idade é " + m.arredondar(m, 2) + " anos.\n")
		escreva("Pessoa(s) acima da média: \n")
		// PERCURSO DE PESQUISA para mostrar quem está <ACIMA DA MÉDIA>
		para (inteiro pos = 0; pos < u.numero_elementos(nome); pos ++) {
			u.aguarde(500)
			se (idade[pos] > m) {	// Mostrando na tela os nomes de quem esta ACIMA DA MÉDIA
				escreva("\t--> " + nome[pos] + " (" + idade[pos] + ")\n")
			}
		}
		escreva("-----------------------------------------------\n")
		// PERCURSO DE PESQUISA para descobrir <MAIOR> IDADE do vetor
		inteiro maior = 0
		para (inteiro pos = 0; pos < u.numero_elementos(nome); pos ++) {
			se (pos == 0) {
				maior = idade[pos]
			} senao {
				se (idade[pos] > maior) {
					maior = idade[pos]
				}
			}
		}
		escreva("Maior idade do grupo: " + maior + " anos.\n")
		escreva("Pessoa(s) com maior idade:\n")
		// PERCURSO DE PESQUISA para mostrar pessoas com MAIOR idade.
		para (inteiro pos = 0; pos < u.numero_elementos(nome); pos++) {
			u.aguarde(500)
			se (idade[pos] == maior) escreva("\t--> " + nome[pos] + "\n")
		}
		escreva("-----------------------------------------------\n")	
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1216; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */