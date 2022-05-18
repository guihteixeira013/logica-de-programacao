programa
{	/*
	assunto:	Crie um programa que preencha seu Vetor com a sequencia Fibonaccia:
				Crie um vetor com 15 posições/índices;
				Regra de Fibonaccia - 1ª posição é 0, 1ª posição é 1;
				Crie percurso para preencher as posições restantes do Vetor;
				Mostre na tela o valor de cada posição.
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{	// CAPA
		escreva("{ EXERCÍCIO 58 - Sequência Fibonacci }\n\n")
		// DECLARANDO VARIÁVEIS
		inteiro fib[15]
		fib[0] = 0
		fib[1] = 1

		para (inteiro pos = 2; pos < u.numero_elementos(fib); pos ++) {
			fib[pos] = fib[pos-1] + fib[pos-2]
		}
		u.aguarde(1000)
		escreva("Os 15 primeiros número de Fibonacci são:\n")
		para (inteiro pos = 0; pos < u.numero_elementos(fib); pos++) {
			u.aguarde(400)
			escreva("[" + fib[pos] + "]  ")
		}
		
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 670; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {fib, 16, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */