programa
{	/*
	assunto:	ex 60 - Crie um programe que crie um vetor com 10 posições;
					preencha este vetor sorteadamente;
					que mostre os valores na tela.
						Identifique os valores PARES;
						mostre-os na tela sua POSIÇÃO;
						SOME esses VALORES pares e mostre-o tela.
							Identifique os valores ÍMPARES;
							mostre sua POSIÇÃO na tela;
							SOME a quantidade de valores ímpares que tem no vetor;
							mostre o resultado na tela.
								Mostre o maior valor sorteado do vetor;
								mostre as posições de ocorrência do maior valor;
								e por fim, mostre na tela quantas vezes houve ocorrência do maior valor.
	autor:	Guilherme Teixeira
	empresa:	Estudonauta
	*/
	inclua biblioteca Util --> u
	funcao inicio()
	{	// CAPA
		escreva("   { EXERCÍCIO 060 - Analisando Números }\n")
		// DECLARAÇÃO DE VARIÁVEIS
		inteiro vet[10], maior = 0
		
		escreva("\tSorteando " + u.numero_elementos(vet) + " valores ...\n")
		u.aguarde(1000)
		// PERCURSO PARA PREENCHER E MOSTRAR OS VALORES DO VETOR
		para(inteiro pos = 0; pos < u.numero_elementos(vet); pos++) {
			vet[pos] = sorteia(1, 10)
			se (pos == 0) { 		// Caso seja a primeira pesquisa, o MAIOR VALOR recebe o PRIMEIRO VALOR.
				maior = vet[pos]
			}				
			se (vet[pos] > maior) {	// Caso o valor seja maior que o anterior, será o novo MAIOR VALOR.
				maior = vet[pos]
			}
			escreva("{" + vet[pos] + "}  ")
			u.aguarde(500)
		}
		escreva("\n-------------------------------------------------")
		escreva("\n  Analisando os valores sorteados ...")
		escreva("\n-------------------------------------------------")
		u.aguarde(1000)
		// EFEITO VISUAL DE ... CARREGANDO ...
		escreva("\n\t")
		para (inteiro p = 0; p <= 20; p++) {
			u.aguarde(100)
			escreva(".")
		}
		u.aguarde(1000)
		escreva("\n==> Valores pares nas posições: ")
		// PERCURSO DE PESQUISA - PROCURANDO VALORES PARES
		logico tem_par = falso
		inteiro totPAR = 0
		para (inteiro pos = 0; pos < u.numero_elementos(vet); pos++) {
			se (vet[pos] % 2 == 0) {	// SE FOR PAR
				tem_par = verdadeiro
				totPAR += vet[pos] 	// totalizando pares
				escreva(pos + " ")	// mostrando posição
			} 
		} 
		se (nao tem_par) escreva("<< NÃO TEM VALORES PARES >>") // caso não tiver valores pares
		escreva("\n\t--> Soma dos pares: " + totPAR)
		se (nao tem_par) escreva("\t<< NÃO TEM VALORES PARES >>") // caso não tiver valores pares
		// EFEITO VISUAL DE ... CARREGANDO ...
		escreva("\n\t")
		para (inteiro p = 0; p <= 20; p++) {
			u.aguarde(100)
			escreva(".")
		}
		escreva("\n==> Valores ímpares nas posições: ")
		// PERCURSO DE PESQUISA - PROCURANDO VALORES ÍMPARES
		logico tem_impar = falso
		inteiro qtdIMP = 0
		para (inteiro pos = 0; pos < u.numero_elementos(vet); pos++) {
			se (vet[pos] % 2 != 0) {
				tem_impar = verdadeiro
				qtdIMP ++
				escreva(pos + " ")
			}
		}
		se (nao tem_impar) escreva("\t<< NÃO TEM VALORES ÍMPARES >>")
		escreva("\n\t--> Quantidade de ímpares: " + qtdIMP)
		se (nao tem_impar) escreva("\t<< NÃO TEM VALORES ÍMPARES >>")
		// EFEITO VISUAL DE ... CARREGANDO ...
		escreva("\n\t")
		para (inteiro p = 0; p <= 20; p++) {
			u.aguarde(100)
			escreva(".")
		}
		escreva("\n==> Maior valor sorteado: " + maior)
		escreva("\n\t--> Valor maior ocorreu nas posições: ")
		// PERCURSO DE PESQUISA - PROCURANDO AS POSIÇÕES DOS MAIORES VALORES
		inteiro totMV = 0
		para (inteiro pos = 0; pos < u.numero_elementos(vet); pos++) {
			se (vet[pos] >= maior) {
				escreva(pos + " ")
				totMV++
			}
		}
		escreva("\n\t--> Total de ocorrências: " + totMV)
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3536; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */