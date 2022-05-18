programa
{	// passando parâmetros por valores>
	inclua biblioteca Util --> u
	funcao quadrado(inteiro tam)
	{
		para (inteiro lin = 0; lin < tam; lin++) {
			para (inteiro col = 0; col < tam; col++) {
				escreva("██")
				u.aguarde(100)
			}
			escreva("\n")
		}
		escreva(tam + "x" + tam + "\n\n")
	}
	
	funcao inicio()
	{
		quadrado(1)
		quadrado(2)
		quadrado(3)
		quadrado(4)
		quadrado(5)
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 240; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */