programa
{	/*
	assunto:	exercício 55 - Crie um programa que crie uma Variável Composta Homogenea Unidimensional (VETOR)
							com 10 posições, com o índice 0 no valor de '3', apartir daí, 
							dê aos próximos índices o dobro da anterior. Depois mostre na tela qual
							o valor de cada posição/índice.
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{	// CAPA DO EXERCÍCIO
		escreva("{ EXERCÍCIO 055 - O dobro dos anteriores }\n")
		// DECLARANDO VETOR
		inteiro val[10]
		val[0] = 3
		// PREENCHE O VETOR
		para (inteiro pos = 1; pos < u.numero_elementos(val); pos ++){
			val[pos] = val[pos - 1] * 2			
		}
		// MOSTRA O VETOR NA TELA
		para (inteiro pos = 0; pos < u.numero_elementos(val); pos++) {
			u.aguarde(500)
			escreva(pos + ":{" + val[pos] + "}")
			u.aguarde(500)
			escreva(" --> ")
		}
		escreva("FIM\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 534; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {val, 15, 10, 3}-{pos, 18, 16, 3}-{pos, 22, 16, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */