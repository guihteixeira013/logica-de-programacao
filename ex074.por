programa
{
	funcao contagem(inteiro ini, inteiro fim, inteiro pass)
	{	
		escreva("---- CONTANDO DE " + ini + " ATÉ " + fim +  " ----\n")

		se (ini > fim) {
			se (pass < 0) {
				pass = pass *(-1)
			}
			para (inteiro c = ini; c >= fim; c -= pass) {
				escreva(c + " --> ")
			}
		} senao {
			para (inteiro c = ini; c <= fim; c += pass) {
				escreva(c + " --> ")
			}
			
		}
		escreva("FIM!\n\n")
	}
	funcao inicio()
	{
		contagem(0, 10, 2)
		contagem(10, 50, 5)
		contagem(10, 2, 1)
		contagem(50, 0, -10)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 517; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {ini, 3, 26, 3}-{fim, 3, 39, 3}-{pass, 3, 52, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */