programa
{	/*
		 Neste exercício, passei parâmetros POR valores, do PARÂMETRO REAL para PARÂMETRO FORMAL;
		 

	*/
	inclua biblioteca Util --> u
/**///___________________________________________________________________________________________
/**/				  //_________ PARÂMETROS FORMAIS ___________//					    //
/**/	funcao meu_escreva(cadeia frase, inteiro rep, inteiro borda) 					    //
/**/	{																	    //
/**/		cadeia faixa	//VARIÁVEL DE ESCOPO LOCAL								    //
/**/		escolha (borda) {													    //
/**/			caso 1:														    //
/**/				faixa = "\nxxxxxxxxxxxxxxxxx__xxxxxxxxxxxxxxxxx\n"				    //
/**/			caso 2:														    //
/**/				faixa = "\nooooooooooooooooo||ooooooooooooooooo\n"				    //
/**/				pare 													    //
/**/			caso 3:														    //
/**/				faixa = "\n~~~~~~~~~~~~~~~~~OO~~~~~~~~~~~~~~~~~\n"  				    //		ESCOPO		ou		ROTINA
/**/				pare														    //	   MEU_ESCREVA				  sem
/**/			caso contrario:												    //							RETORNO
/**/				faixa = "\n-----------------xx-----------------\n"				    //
/**/				pare														    //
/**/		}																    //
/**/		escreva(faixa)				// escrevendo faixa escolhido noutro escopo		    //
/**/																		    //
/**/		para (inteiro c = 0; c < rep; c++) {                                                //
/**/		escreva(frase + " ")												    //
/**/		}  																    //
/**/		  																    //
/**/		escreva(faixa)				// escrevebdo faixa escolhido noutro escopo		    //
/**/	}																	    //
/**///________________________________________________________________________________________//
	
/**///___________________________________________________________________________________________	
/**/ funcao inicio()															//
/**/	{ // DISPARO	//_____________________ PARÂMETROS REAIS _______________________________// //		ESCOPO		ou		ROTINA
/**/		meu_escreva("sou estudante do Estudonauta, \nmas não pretendo ser for always", 1, 1) //	     INICIAL				  sem
/**/	}																	     //							RETORNO
/**///_________________________________________________________________________________________//
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1408; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */