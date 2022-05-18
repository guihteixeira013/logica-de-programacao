programa
{	
	funcao inteiro somador(inteiro num1, inteiro num2)
	{
		retorne num1 + num2
	}
	funcao vazio inicio()
	{
		// declarando variáveis locais
		inteiro n1, n2

		// entrada de dados
		escreva("Digite um número: ")
		leia(n1)
		escreva("Digite outro número: ")
		leia(n2)
		
		// saída de dados
		escreva("A Soma dos números "+n1+" + "+n2+" é " +somador(n1, n2))
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */