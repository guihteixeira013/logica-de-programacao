programa
{	/*
	assunto:	Exercício 56 - Crie um vetor de 10 índices;
						peça pro cliente dar um número, coloque-o no índice [0];
						apartir daí, preencha o restante dos índices do vetor somando
						5 em 5 cada um;
						No final do programa, mostre na tela os valroes correspondentes 
						a cada índice do vetor.
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{		// CAPA DO EXERCÍCIO
		escreva("{ EXERCÍCIO 56 - Vetor com contagem de 5 em 5 }\n")
			// DECLARANDO VARIÁVEIS
		inteiro vet[10]
			// ENTRADA DE DADOS
		escreva("Me diga um valor: ")
		leia(vet[0])
			// PREENCHENDO ÍNDICES DO VETOR
		para (inteiro pos = 1; pos < u.numero_elementos(vet); pos++) {
			vet[pos] = vet[pos-1] + 5
		}
			// SAÍDA DE DADOS
		escreva("\nO vetor foi gerado com os valores: \n")
		para (inteiro pos = 0; pos < u.numero_elementos(vet); pos++) {
			u.aguarde(400)
			escreva(pos + " > {" + vet[pos] + "} \n")
		}
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 759; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 17, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */