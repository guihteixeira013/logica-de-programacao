programa
{
	inclua biblioteca Matematica --> m
	funcao real mudapreco(real valor, inteiro porc, cadeia acao)
	{
		real npreco = 0.0
		
		se (acao == "A" ou acao == "a") {
			npreco = valor + (valor * porc / 100)
		} senao se (acao == "D" ou acao == "d") {
			npreco = valor - (valor * porc / 100)
		}
		retorne m.arredondar(npreco, 2)
	}
	funcao inicio()
	{	
		real preco 
		inteiro aum, desc
		
		escreva("\n Preço do produto: R$")
		leia(preco)
		escreva("\n % de aumento: ")
		leia(aum)
		escreva(" % de desconto: ")
		leia(desc)
		escreva("\n Novo preço com aumento de "+aum+"%: R$" + mudapreco(preco, aum, "A"))
		escreva("\n Novo preço com desconto de "+desc+"%: R$" + mudapreco(preco, desc, "D"))
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 337; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */