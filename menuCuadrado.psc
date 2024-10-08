SubProceso creacion(anc, alt)
	definir x, z Como Entero;
	para x <- 1 Hasta alt con paso 1 Hacer
		para z <- 1 Hasta anc Con Paso 1 Hacer
			Si x = 1 O z = 1 O x = alt O z = anc Entonces
				Escribir "* " Sin Saltar;
			Sino
				Escribir "  " Sin Saltar;
			FinSi
		FinPara
		Escribir "";
	FinPara
FinSubProceso

Proceso menuCuadrado
	Definir alt Como Entero;
	Escribir "¿Cuál va a ser la altura?";
	Leer alt;
	Definir anc Como Entero;
	Escribir "¿Cuál va a ser la anchura?";
	leer anc;
	Definir opt Como entero;
	Repetir
		Escribir "1. Pintar cuadrado";
		Escribir "2. Girar el cuadrado";
		Escribir "3. Cambiar valores del cuadrado";
		Escribir "4. Salir";
		Escribir "¿Qué opción quieres elegir?";
		Leer opt; 
		Segun opt Hacer
			1:
				creacion(anc,alt);
			2:
				creacion(alt,anc);
			3:
				Escribir "Nueva altura: ";
				Leer alt;
				Escribir "Nueva anchura: ";
				Leer anc;
				creacion(anc,alt);
			4:
				Escribir "Gracias por utilizar este programa";
			De Otro Modo:
				Escribir "Te has equivocado de opción, tienes que elegir una de las opciones anteriores";
		FinSegun
	Hasta Que opt == 4
FinProceso