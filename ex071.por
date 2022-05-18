programa
{	
	inclua biblioteca Texto --> txt
	inclua biblioteca Util --> u 

	// declarando variáveis globais
	inteiro vel1 = 40, vel2 = 25, vel3 = 15
		

	funcao linha(inteiro rep) 	// FUNCAÇÃO LINHA
	{	
		escreva("\t\t\t\t")
		// Repetição da linha
		para (inteiro c = 0; c < rep; c ++) {
			
			// velocidades do aguarde, caso a frase seja maior, menor será o aguarde de linha...
			se (rep <= 20) {			
				u.aguarde(vel1)
			} senao se (rep <= 40) {
				u.aguarde(vel2)
			} senao se (rep <= 80) {
				u.aguarde(vel3)
			}
			escreva("-")
		}
		escreva("\n")
	}	
	funcao mensagem(cadeia mens) 	// FUNÇÃO MENSAGEM
	{	
		// declarando variável local
		inteiro tam = txt.numero_caracteres(mens) 

		linha(tam)
		escreva("\t\t\t\t")
		para (inteiro c = 0; c < tam; c++) {
			
			// velocidades do aguarde, caso a frase seja maior, menor será o aguarde de linha...
			se (tam <= 20) {			
				u.aguarde(vel1)
			} senao se (tam <= 40) {
				u.aguarde(vel2)
			} senao se (tam <= 80) {
				u.aguarde(vel3)
			}
			escreva(txt.obter_caracter(mens, c))
		}
		escreva("\n")
		linha(tam)
	}
	funcao inicio()			// FUNÇÃO INÍCIO 			--> É o primeiro a ser executado!
	{	// declarando variáveis locais	
		cadeia sms, cont
		logico exit = falso
		faca {
			// entrada de dados
			escreva("ENVIAR: ")
			leia(sms)
			
			// saída de resultados
			mensagem(sms)

			escreva("['X' to exit] = ")
			leia(cont)
			se (txt.caixa_alta(cont) == "X") {
				exit = verdadeiro
				pare
			} 
			escreva("\n")
		} enquanto (nao exit)
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 155; 
 * @DOBRAMENTO-CODIGO = [9, 27, 49];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {sms, 52, 9, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */