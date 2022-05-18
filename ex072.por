programa
{	
	inclua biblioteca Util --> u
	
	funcao tabuada(inteiro num1, inteiro lim)
	{
		escreva("------- Tabuado "+num1+" -------\n")
		para (inteiro c = 1; c <= lim; c++) {
			u.aguarde(100)
			escreva(num1 + "x" + c + " = " + (num1*c) + "\n")
		}
		escreva("--------------------------")
		escreva("\n")
	}
	funcao inicio()
	{	
		// declarando variável local
		inteiro num, mult

		// entrada de dados
		escreva("Qual tabuada você quer? ")
		leia(num)
		escreva("Qual limite de multiplicação? ")
		leia(mult)

		//Saída de Resultados
		tabuada(num, mult)
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 162; 
 * @DOBRAMENTO-CODIGO = [14];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */