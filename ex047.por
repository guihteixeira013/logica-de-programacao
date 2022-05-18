programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{	//VARIÁVEIS
		inteiro ini, fi, pas
		//ENTRADA DE DADOS
		escreva("{ EXERCÍCIO 047 - Contagem Personalizada }\n")
		escreva("\nINÍCIO = ")
		leia(ini)
		escreva("FINAL = ")
		leia(fi)
		escreva("PASSO = ")
		leia(pas)
		se (pas < 0) pas *= -1 //CASO USUÁRIO DIGITE VALORES NEGATIVOS [-1, -2 ...]
		se (ini < fi) {
			para ( inteiro c = ini; c <= fi; c += pas) {
				u.aguarde(300)
				escreva(c + " ... ")
			}
		} senao {
			para ( inteiro c = ini; c >= fi; c -= pas) {
				u.aguarde(300)
				escreva(c + " ... ")
			}
		}
	escreva("FIM DO PROGRAMA")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 589; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */