Algoritmo ExamenCorrecion
	
	
	
	Repetir

	Escribir "menu"
	Escribir "ingresar numero deseado de las pregunta del examen"

	Escribir"pregunta 2"
	escribir"pregunta 3"
	escribir"pregunta 4"
	escribir"pregunta 5"
	escribir"pregunta 6"
	escribir"pregunta 7"
	escribir"0 para salir"
	Leer opc
	borrar pantalla
	
	
	si opc = 2 Entonces
		definir n,i,j como entero 
		n=5
		para i <- 1 hasta n Hacer
			para j <- 1 hasta i Hacer
				escribir"*" sin saltar 
				
			FinPara
			
			escribir"*"
		FinPara
    finsi 
	si opc=3 entonces 
			definir a,b,x como entero
			a=b; b=6 
			x=a+a*(a+b)-b*a+(trunc(b/3)-2+a*a mod 2) 
			escribir x 
	FinSi
		
	si opc=4 Entonces
		definir n,m,r como entero 
		n=20; m=25; r=1
		mientras (r <>0) Hacer
			r= m mod n 
			si(r=0) Entonces
				escribir"m=",m
				escribir"n=",n
			SiNo
				n=m
				m=r
				
			FinSi
		FinMientras
	FinSi
	si opc=5
		Definir multiplicacion, suma, resta, division, caracterComoCaracter, operadorConMasRepeticiones Como Caracter
		Definir contadorMultiplicacion, contadorSuma, contadorResta, contadorDivision, contadorOperadorConMasRepeticiones Como Entero
		
		multiplicacion = "*"
		suma = "+"
		resta = "-"
		division = "/"
		caracterComoCaracter = ""
		contadorMultiplicacion = 0
		contadorSuma = 0
		contadorResta = 0
		contadorDivision = 0
		contadorOperadorConMasRepeticiones = 0
		operadorConMasRepeticiones = ""
		
		Escribir "Ingrese una expresión matemática,(Ingrese f para finalizar):"
		
		Mientras caracterComoCaracter <> "f" Hacer
			Leer caracterComoCaracter
			
			Si caracterComoCaracter = multiplicacion Entonces
				contadorMultiplicacion = contadorMultiplicacion + 1
			Fin Si
			
			Si caracterComoCaracter = suma Entonces
				contadorSuma = contadorSuma + 1
			Fin Si
			
			Si caracterComoCaracter = resta Entonces
				contadorResta = contadorResta + 1
			Fin Si
			
			Si caracterComoCaracter = division Entonces
				contadorDivision = contadorDivision + 1
			Fin Si
		Fin Mientras
		
		Si contadorMultiplicacion > contadorOperadorConMasRepeticiones Entonces
			contadorOperadorConMasRepeticiones = contadorMultiplicacion
			operadorConMasRepeticiones = multiplicacion
		Fin Si
		
		Si contadorSuma > contadorOperadorConMasRepeticiones Entonces
			contadorOperadorConMasRepeticiones = contadorSuma
			operadorConMasRepeticiones = suma
		Fin Si
		
		Si contadorResta > contadorOperadorConMasRepeticiones Entonces
			contadorOperadorConMasRepeticiones = contadorResta
			operadorConMasRepeticiones = resta
		Fin Si
		
		Si contadorDivision > contadorOperadorConMasRepeticiones Entonces
			contadorOperadorConMasRepeticiones = contadorDivision
			operadorConMasRepeticiones = division
		Fin Si
		
		Escribir "El operador matemático con más repeticiones es: ", operadorConMasRepeticiones
	finsi
		si opc=6
			escribir"ingresar tu edad" 
			leer edad 
			si edad<=9 entonces 
				f<-200-edad/10 
			sino 
				si edad>=18 Entonces
					f<-200-edad/10.0+(10.0*15.0/100)
				FinSi
			FinSi
			escribir"pulsaciones:",f
			escribir"tu edad es:",edad 
		FinSi
		si opc=7
			
				Definir cantidadPositivos, cantidadNegativos, numero , contadorNegativosMultiplos Como Entero
				
				cantidadPositivos = 0
				cantidadNegativos = 0
				contadorNegativosMultiplos = 0
				
				Escribir "Ingrese una serie de números (ingrese 0 para finalizar):"
				
				Repetir
					Leer numero
					
					Si numero <> 0 Entonces
						Si numero > 0 Entonces
							Si numero MOD 3 = 0 Y numero MOD 4 = 0 Entonces
								Escribir numero, " es positivo y múltiplo de 3 y 4."
								cantidadPositivos = cantidadPositivos + 1
							Fin Si
						Sino
							Si numero MOD 3 = 0 Y numero MOD 4 = 0 Entonces
								contadorNegativosMultiplos = contadorNegativosMultiplos + 1
							Fin Si
						Fin Si
					Fin Si
					
				Hasta Que numero = 0
				
				Escribir "La cantidad de números positivos múltiplos de 3 y 4 es: ", cantidadPositivos
				Escribir "La cantidad de números negativos múltiplos de 3 y 4 es: ", contadorNegativosMultiplos
				

		FinSi
	    
	Hasta Que opc = 0
	
FinAlgoritmo
