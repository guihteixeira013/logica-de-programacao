programa
{	/*
	assunto:	ex057 - Criar um programa que crie um vetor com 10 posições/índices,
					o programa deverá preencher t0das as posições através
					do comanado 'SORTEIA' do Portugol.
					Cada vez que uma posição for preenchida, deverá aparecer
					na tela o tal valor e sua posição referida no menor pro maior [0 a 9].
					No final do programa, mostre na tela a forma invertida que foi
					mostrada anterionmente, agora de [9 a 0].
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{	// CAPA
		escreva("{ EXERCÍCIO 057 - Sorteio Invertido }\n\n")
		
		escreva("Vou mostrar 10 valores...\n")
		inteiro num[10]
		para (inteiro pos = 0; pos < u.numero_elementos(num); pos++) {
			num[pos] = sorteia(1,10)
			u.aguarde(400)
			escreva(pos + " -> {" + num[pos] + "} ")
		}
		escreva("\n\nMostrando a sequência invertida ...\n")
		para (inteiro pos = u.numero_elementos(num)-1; pos >= 0; pos --) {
			u.aguarde(400)
			escreva(pos + " -> {" + num[pos] + "} ")
		}
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 677; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num, 19, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */