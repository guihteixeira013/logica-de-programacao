programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{	
		escreva("{ EXERCÍCIO 49 - Sequência de Fibonacci }\n\n")

		inteiro tot, fib = 0, ele1 = 0, ele2 = 1
		escreva("Quantos elementos você quer exibir? ")
		leia(tot)
		
		para (inteiro c = 1; c <= tot; c++) {
			
			se (c == 1) {
				fib = ele1
			} senao se (c == 2) { 
				fib = ele2
			} senao {
				fib = ele1 + ele2
				ele1 = ele2
				ele2 = fib
			}

			escreva(fib + " ")
			u.aguarde(700)
		}

		escreva("PRONTO!\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 137; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {fib, 8, 15, 3}-{ele1, 8, 24, 4}-{ele2, 8, 34, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */