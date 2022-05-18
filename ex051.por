programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{	
		inteiro and
	
		escreva("Quantos andares o triângulo vai ter? ")
		leia(and)
		inteiro tot = 1
		para (inteiro cand = 1; cand <= and; cand++) {
			para (inteiro cest = 1; cest <= tot; cest++) {
				escreva("*")
			}
			escreva(" [" + cand + "º]")
			escreva("\n")
			tot+= 2
			u.aguarde(200)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 308; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */