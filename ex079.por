programa
{
	funcao cadeia fibonacci(inteiro qtd)
	{
		cadeia fib = "0 -> 1 -> "
		inteiro f1, f2, f3
		f1 = 0
		f2 = 1

		para (inteiro c = 3; c <= qtd; c++) {
			f3 = f1 + f2
			fib = fib + f3 + " -> "
			f1 = f2
			f2 = f3
		}

		retorne fib + "FIM"
	}
	funcao inicio()
	{
		inteiro tot 
		escreva("Digite quantidade de termos: ")
		leia(tot)
		escreva("Sequência de Fibonacci: " + fibonacci(tot))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 103; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {tot, 21, 10, 3}-{qtd, 3, 34, 3}-{fib, 5, 9, 3}-{f1, 6, 10, 2}-{f2, 6, 14, 2}-{f3, 6, 18, 2};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */