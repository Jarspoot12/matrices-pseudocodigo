Algoritmo MenuMatrices
	Definir order, matrizManual, matrizAleatoria Como Entero 
	Definir Operacion Como Entero 
	Definir numberType Como Entero
	Definir filasM1, columnasM1, filasM2, columnasM2 Como Entero
	Dimension matrizUno[100,100]
	filasM1<-0
	columnasM1<-0
	filasM2<-0
	columnasM2<-0
	Escribir "Digite el numero de filas de la matriz uno: "
	Leer filasM1
	Escribir "Digite el numero de columnas de la matriz uno: "
	Leer columnasM1
	Escribir "Digite el numero de filas de la matriz dos: "
	Leer filasM2
	Escribir "Digite el numero de columnas de la matriz dos: "
	Leer columnasM2
	Dimension matrizUno[filasM1,columnasM1]
    Dimension matrizDos[filasM2,columnasM2]
	Para i<-0 Hasta filasM1 Con Paso 1 
		Para j<-0 Hasta columnasM1 Con Paso 1
			Dimension matrizUno[i,j]= 0
		FinPara
	FinPara
	Para i<-0 Hasta filasM2 Con Paso 1
		Para j<-0 Hasta columnasM2 Con Paso 1
			Dimension matrizDos[i,j]= 0
		FinPara
	FinPara
	Escribir "la matriz uno es: "
	Para i<-0 Hasta filasM1 Con Paso 1
		Para j<-0 Hasta columnasM1 Con Paso 1
			Mostrar matrizUno[i,j] " "
		FinPara
		
	FinPara
	
	Escribir "la matriz dos es: "
	Para i<-0 Hasta filasM2 Con Paso 1
		Para j<-0 Hasta columnasM1 Con Paso 1
			Mostrar matrizDos[i,j] " "
		FinPara
	FinPara
	// Matriz manual
	Para i<-0 Hasta filasM1 Con Paso 1
		Para j<-0 Hasta columnasM1 Con Paso 1
			Escribir "digita el elemento " "[" i "][" j "]" " de la matriz uno: "
			Leer matrizUno[i, j]
		FinPara
	FinPara
	
	Para i<-0 Hasta filasM2 Con Paso 1
		Para j<-0 Hasta columnasM2 Con Paso 1
			Escribir "digita el elemento " "[" i "][" j "]" " de la matriz dos: "
			Leer matrizDos[i, j]
		FinPara
	FinPara
	//imprimir valores manualmente
	Escribir "la matriz uno es: "
	Para i<-0 Hasta filasM1 Con Paso 1
		Para j<-0 Hasta columnasM1 Con Paso 1
			Mostrar matrizUno[i,j] " "
		FinPara
	FinPara
	
	Escribir "la matriz dos es: "
	Para i<-0 Hasta filasM2 Con Paso 1
		Para j<-0 Hasta columnasM2 Con Paso 1
			Mostrar matrizDos[i,j] " "
		FinPara
	FinPara
	//matrizAleatoria
	Para i<-0 Hasta filasM1 Con Paso 1
		Para j<-0 Hasta columnasM1 Con Paso 1
			numberRandom <- azar(9)
			matrizUno[i,j] = numberRandom
		FinPara
	FinPara
	Para i<-0 Hasta filasM2 Con Paso 1
		Para j<-0 Hasta columnasM2 Con Paso 1
			numberRandom <- azar(9)
			matrizDos[i,j] = numberRandom
		FinPara
	FinPara
	//imprimir los numeros aleatorios
	Escribir "la matriz uno es: "
	Para i<-0 Hasta filasM1 Con Paso 1
		Para j<-0 Hasta columnasM1 Con Paso 1
			Mostrar matrizUno[i,j] " "
		FinPara
	FinPara
	
	Escribir "la matriz dos es: "
	Para i<-1 hasta filasM2 Con Paso 1
		Para j<-1 hasta columnasM2 con paso 1
			Mostrar matrizDos[i,j] " "
		FinPara
	FinPara
	
	Escribir "seleccione la opcion a realizar"
	Escribir "1.suma"
	Escribir "2.resta"
	Escribir "3.multiplicar"
	Escribir "4.salir"
	Leer op
	Dimension m1[0,0]
	Dimension m2[0,0]
	Mientras op <> 4 Hacer
		Escribir "la matriz uno es: "
		Para i<-0 Hasta filasM1 Con Paso 1
			Para j<-0 Hasta columnasM1 Con Paso 1
				Mostrar m1[i,j] " "
			FinPara
		FinPara
		Escribir "la matriz dos es: "
		Para i<-0 Hasta filasM2 Con Paso 1
			Para j<-0 Hasta columnasM2 Con Paso 1
				Mostrar m2[i,j]
			FinPara
		FinPara
		Segun op Hacer
			1://suma de matriz
				si (filas1=filas2 & columnas1==columnas2) Entonces
					Escribir "la suma de la matriz uno con la matriz dos es: "
					Dimension mresultado[filas1,filas2]
					Para i<-0 Hasta filas1 Con Paso 1
						Para j<-0 Hasta columnas1 Con Paso 1
							mresultado[i,j]=m1[i,j] + m2[i,j]
							Mostrar mresultado[i,j] " "
						FinPara
					FinPara
				FinSi
				Escribir "Las matrices son de dimensiones distintas, NO podemos realizar la suma"
			2:	//RESTA DE MATRIZ 
			    si (filas1=filas2 & columnas1=columnas2)
					Escribir "la resta de la matriz uno con la matriz dos es: "
					Dimension mresultado[filas1,columnas1]
					Para i<-0 Hasta filas1 Con Paso 1
						Para j<-0 Hasta columnas1 Con Paso 1
							mresultado[i,j]=m1[i,j] - m2[i,j]
							Mostrar mresultado[i,j] " "
						FinPara
					FinPara
				FinSi
				Escribir "Las matrices son de dimensiones distintas, NO podemos realizar la resta"
			3: //Multiplicación de matriz
				si(columnas1=columnas2)
					Escribir "la multiplicacion de la matriz uno por la matriz dos es: "
					Dimension mresultado[filas1,columnas2]
					Para fila<-0 Hasta filas1 Con Paso 1
						Para col<-0 Hasta columnas2 Con Paso 1
							Para valormedio<-0 Hasta filas2 Con Paso 1
								mresultado[fila,col]=m1[fila,valormedio] * m2[valormedio,col]
								Mostrar mresultado[fila,col] " "
							FinPara
						FinPara
					FinPara
				FinSi
				Escribir "El numero de columnas de la matriz uno NO coincide con el numero de columnas de la matriz dos. NO se pueden multiplicar."
		FinSegun
		
		Escribir "seleccione una operacion valida"
		Escribir "seleccione la opcion a realizar"
		Escribir "1.suma"
		Escribir "2.resta"
		Escribir "3.multiplicar"
		Escribir "4.salir"
		Leer op
	FinMientras
	Escribir numberType//regresa al menu principal
	Escribir "ingrese una opcion valida"
	Escribir "----------Seleccione el tipo de matriz a realizar------------"
	Escribir "1.rellenar matriz manualmente"
	Escribir "2.rellenar matriz automaticamente"
	Escribir "3.Cambiar numero de entradas, filas y columnas de las matrices"
	Escribir "4.salir"
	Leer option	
FinAlgoritmo
	