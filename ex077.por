programa
{
	funcao logico primo(inteiro num)
	{
		logico eprimo = verdadeiro
		para (inteiro c = 2; c < num; c++) {
			se (num % c == 0) {
				eprimo = falso
				pare
			}
		}
		retorne eprimo
	}
	funcao inicio()
	{
		inteiro n
		escreva("Número: ")
		leia(n)
		se (primo(n)) {
			escreva("O número " +n+ " É PRIMO!.")
		} senao {
			escreva("O número " +n+ " NÃO É PRIMO!.")
		}

		
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 365; 
 * @DOBRAMENTO-CODIGO = [2];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */