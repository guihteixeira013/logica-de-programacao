programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{	// Declarando vetor
		inteiro vet[9]
		
		// Preenchendo vetor, sem valores repetidos
		logico encontrado = falso
		inteiro p = 0
		enquanto (p < u.numero_elementos(vet)) {
			vet[p] = sorteia(1, 10)
			encontrado = falso
			para (inteiro aux = 0; aux < p; aux++) {
				se (vet[aux] == vet[p]) {
					encontrado = verdadeiro
					pare
				}
			}
			se (nao encontrado) {
				p++
			}
		}

		// Ordenando vetor
		inteiro aux 
		para (inteiro pri = 0; pri < u.numero_elementos(vet) -1; pri++) {
			para (inteiro sec = pri+1; sec < u.numero_elementos(vet); sec++){
				se (vet[sec] < vet[pri]) {
					aux = vet[pri]
					vet[pri] = vet[sec]
					vet[sec] = aux
				}
			}
		}

		// Mostrando vetor na tela
		para (inteiro i = 0; i < u.numero_elementos(vet); i++) {
			u.aguarde(200)
			escreva(vet[i] + " ")
		}

		// BUSCA BINARIA
		inteiro chave
		inteiro ini = 0, meio = 0, fim = u.numero_elementos(vet)-1
		logico achei = falso
		
		escreva("\nQual o valor que você deseja procurar? ")
		leia(chave)

		enquanto (ini <= fim) {
			meio = (ini + fim) /2
			se (chave == vet[meio]) {
				achei = verdadeiro
				pare
			} senao {
				se (vet[meio] > chave) {
					fim = meio -1
				} senao {
					ini = meio +1
				}
			}
		}
		se (achei) {
			escreva("O valor " + chave + " procurado, foi encontrado na posição [" + meio + "]\n")
		} senao {
			escreva("O valor " + chave + " infelizmente não foi encontrado.\n")
		}
		


		
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1379; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 6, 10, 3}-{chave, 44, 10, 5}-{ini, 45, 10, 3}-{meio, 45, 19, 4}-{fim, 45, 29, 3}-{achei, 46, 9, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */