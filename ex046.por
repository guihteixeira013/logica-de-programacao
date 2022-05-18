programa
{	/*
	assunto:	ex 46 - Tabuada
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{	// VARIÁVEIS
		inteiro num, c, resul
		// Entrada de dados
		escreva("{ EXERCÍCIO 046 - Tabuada }")
		escreva("\nNÚMERO = ")
		leia(num)
		// ESTRUTURA DE REPETIÇÃO	
		para (c =1; c<=10; c++) {
			resul = num * c
			escreva("\n" + num + " x " + c + " = " + resul)
			u.aguarde(800)
		}
		escreva("\n\n------- FIM -------")
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 445; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */