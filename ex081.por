programa
{	
	funcao cadeia situacao(real sit)
	{	 
		se (sit < 3) { 			// A MÉDIA PARA PASSAR É 6!
			retorne "REPROVADO!"
		} senao se (sit < 7) {
			retorne "RECUPERAÇÃO!"
		} senao {
			retorne "APROVADO!"
		}
	}
	funcao real media(real n1, real n2)
	{
		retorne (n1 + n2) / 2			// Calculando a média das notas
	}
	funcao inicio()
	{
		real nota1, nota2
		escreva("1ª Nota: ")
		leia(nota1)
		escreva("2ª Nota: ")
		leia(nota2)
		
		escreva("\nCom as notas " + nota1 + " e " + nota2)
		escreva(" o aluno está " + situacao(media(nota1, nota2)))
		escreva("\nMédia: " + media(nota1, nota2))
		escreva("\n\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 66; 
 * @DOBRAMENTO-CODIGO = [12, 16];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */