programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{	//CAPA
		escreva("{ EXERCÍCIO 048 - Número Primo }\n")
		//DECLARAÇÃO DE VARIÁVEIS
		inteiro n, div = 0
		//ENTRADA DE DADOS
		escreva("\nDigite um número: ")
		leia(n)
		escreva("--------------------------------------------\n")
		para (inteiro c = 1; c <= n; c++) {
			u.aguarde(500)
			se (n % c == 0) { // se o NÚMERO digitado for DIVIDO pelo CONTADOR e não restar nada, quer dizer que ele é divisível por este.
				escreva("[" + c + "]")
				div ++
			} senao {
				escreva(" " + c + " ")
			}
		}
		//SAÍDA DE RESULTADOS	
		escreva("\n--------------------------------------------")
		u.aguarde(1000)
		escreva("\nO número " + n + " foi divisível [" + div + "] vezes.")
		u.aguarde(1000)
		escreva("\nLogo, ele ")
		u.aguarde(1250)
		se (div <= 2) {
			escreva("É PRIMO!")
		} senao {
			escreva("NÃO É PRIMO!")
		}
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 784; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */