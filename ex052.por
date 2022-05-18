programa
{	/*
	assunto:	ex051: Crie um programa que mostre uma pirâmide
				invertida desenhada na tela, composta por 
				vários símbolos de *. O usuário deverá 
				indicar quantos níveis a pirâmide vai ter.
	autor:	Guilherme Teixeira	
	empresa:	Estudonauta
	*/
	funcao inicio()
	{
		inteiro and
	
		escreva("Quantos andares a pirâmide terá? ")
		leia(and)

		inteiro qtdEST = (and*2)-1
		inteiro qtdESP = 0
		para (inteiro cAnd = 1; cAnd <= and; cAnd ++) {	// CONTADOR DE ANDARES
			para (inteiro c2 = 1; c2 <= qtdESP; c2 ++) {	//	CONTADOR DE ESPAÇOS
				escreva(" ")
				
			}
			qtdESP ++
			para (inteiro c1 = 1; c1 <= qtdEST; c1 ++) {	//	CONTADOR DE ESTRELAS
				escreva("*")
				
			}
			qtdEST -= 2
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */