programa
{	
	inclua biblioteca Util --> u
	funcao contagem(inteiro ini, inteiro fim, inteiro pulo)
	{
		escreva("--------------------------------------------------\n")
		escreva("     Contagem de "+ini+ " até "+fim+" pulando de "+pulo+" em "+pulo+" \n")

		enquanto (ini <= fim) {
			escreva(ini+" --> ")
			ini += pulo
			u.aguarde(200)
		}
			/* OU USANDO A ESTRUTURA DE REPETIÇÃO "PARA":
			 *  
			 *  		para (inteiro c = ini; c <= fim; c += pulo) {
			 *  			escreva(ini+" --> ")
			 *  			u.aguarde(200)
			 *  		}  
			 *  	
		 	 */
		escreva("FIM\n")
		escreva("--------------------------------------------------\n")	
	}
	funcao inicio()
	{
		contagem(0, 10, 2)
		contagem(10,50, 5)
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 467; 
 * @DOBRAMENTO-CODIGO = [24];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */