programa
{	
	inclua biblioteca Util --> u
	funcao inteiro maior(inteiro n[])
	{	
		inteiro mai = n[0]
		para (inteiro c = 0; c < u.numero_elementos(n); c++) {
			se (n[c] > mai) {
				mai = n[c]
			}
		}
		retorne mai
	}
	funcao inicio()
	{
		inteiro num[] = {3, 7, 1, 4, 9, 6, 2}
		escreva("O maior valor que eu encontrei foi " + maior(num))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 278; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */