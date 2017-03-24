
%Verificaciones
%De Dimensiones
dimensiones(6,6).
dimensiones(10,10).
dimensiones(20,20).

%Cantidad de Barcos Segun dimensiones
cBarcos(3,6,6,3).
cBarcos(5,10,10,2).
cBarcos(10,20,20,1).

%Hechos para validar los barcos permitidos para el jugador y el enemigo
letraBarco(a).
letraBarco(b).
letraBarco(c).
letraBarco(d).
letraBarco(e).
letraBarco(f).
letraBarco(g).
letraBarco(h).
letraBarco(i).
letraBarco(j).

%HECHOS 
letraABCDario(k).

%HECHOS DE ACCIONES EN EL TABLERO, son consideradas para el getScore.
barcoHUNDIDO(x). %Barco Destruido 
barcoDANHADO(o). %Barco Danhado

%Hechos para validar los barcos pertenecientes al jugador
barcosJugador(6,6,a). %Barcos permitidos segun el tablero.
barcosJugador(6,6,b).
barcosJugador(6,6,c).

barcosJugador(10,10,a).
barcosJugador(10,10,b).
barcosJugador(10,10,c).
barcosJugador(10,10,d).
barcosJugador(10,10,e).

barcosJugador(20,20,a).
barcosJugador(20,20,b).
barcosJugador(20,20,c).
barcosJugador(20,20,d).
barcosJugador(20,20,e).
barcosJugador(20,20,f).
barcosJugador(20,20,g).
barcosJugador(20,20,h).
barcosJugador(20,20,i).
barcosJugador(20,20,j).


%Hechos para validar el contenido del tablero.
celdaTablero(ACUM,X):-
    X is ACUM;letraBarco(X). %Corresponde a la numeraciOn o es un barco.



%Tablero
%Primer elemento es el numero del tablero (son 3 distintos)
%segundo y tercer elemento son las dimensiones de fila y columna
%cuarto elemento es la cantidad de barcos que posee
%quinto elemento es el tablero BOARD.
tablero(0,6,6,3, [[1,2,a,4,5,d],
		[7,8,a,10,e,e],
		[b,14,15,16,17,18],
		[19,20,21,22,23,e],
		[25,26,27,28,29,e],
		[c,c,c,34,35,e]]).

tablero(1,6,6,3, [[b,b,3,4,5,c],
		[7,8,9,10,11,12],
		[a,14,15,16,17,18],
		[a,20,21,22,23,a],
		[a,26,27,b,b,a],
		[31,32,c,34,35,a]]).

tablero(2,6,6,3, [[1,2,3,4,5,c],
		[7,8,9,b,11,12],
		[a,a,a,b,17,18],
		[19,20,21,22,23,a],
		[25,b,c,28,29,a],
		[31,b,33,34,35,a]]).


tablero(0,10,10,5, [[a,2,3,4,5,6,7,8,b,b],
                     [a,12,13,14,15,16,17,18,19,a],
                     [a,22,23,24,25,26,27,28,29,a],
                     [31,b,b,34,35,36,37,38,39,a],
                     [41,42,c,44,45,46,47,48,49,50],
                     [e,52,53,54,55,e,57,58,59,60],
                     [e,d,d,d,d,66,e,68,69,70],
                     [e,72,73,74,75,e,77,78,79,80],
                     [e,82,83,84,85,e,87,88,89,c],
                     [e,92,93,94,95,e,d,d,d,d]]).


tablero(1,10,10,5, [[1,2,3,4,5,6,7,a,a,a],
                     [11,d,d,d,d,16,17,18,19,b],
                     [c,22,23,24,25,26,27,28,c,b],
                     [31,32,33,34,35,36,37,38,39,40],
                     [41,42,43,44,45,46,d,d,d,d],
                     [51,52,53,54,55,56,57,58,59,e],
                     [e,e,e,e,e,66,67,68,69,e],
                     [71,a,b,b,75,76,77,78,79,e],
                     [81,a,83,84,85,86,87,88,89,e],
                     [91,a,93,94,95,96,97,98,99,e]]).

tablero(2,10,10,5, [[1,2,3,4,5,6,7,a,a,a],
                     [11,d,d,d,d,16,17,18,19,b],
                     [c,22,23,24,25,26,27,28,c,b],
                     [31,32,33,34,35,36,37,38,39,40],
                     [41,42,k,k,45,46,d,d,d,d],
                     [51,52,53,54,55,56,57,58,59,e],
                     [e,e,e,e,e,66,67,68,69,e],
                     [71,a,b,b,75,76,77,78,79,e],
                     [81,a,83,84,85,86,87,88,89,e],
                     [91,a,93,94,95,96,k,k,99,e]]).  %Tablero incorrecto, el barco K(11) no estA permitido
					 
tablero(3,10,10,5, [[1,2,3,4,5,6,7,a,a,a],
                     [11,d,d,d,d,16,17,18,19,b],
                     [c,22,23,24,25,26,27,28,c,b],
                     [31,32,33,34,35,36,37,38,39,40],
                     [41,42,43,44,45,46,d,d,d,d],
                     [51,52,53,54,55,56,57,58,59,e],
                     [e,e,e,e,e,66,67,68,69,e],
                     [71,a,b,b,75,76,77,78,79,e],
                     [81,a,83,84,85,86,87,88,89,e],
                     [91,a,93,94,95,96,97,98,100,e]]). %Tablero incorrecto por la numeraciOn, falta el 99.


					 
					 
tablero(0,20,20,10, [[a,2,3,4,5,6,j,8,9,10,11,12,13,14,15,16,17,a,a,a],
		     [a,22,23,24,25,26,j,28,29,30,31,32,33,c,b,b,37,38,39,40],
		     [a,42,43,44,45,46,j,48,49,50,51,52,53,d,55,56,57,58,59,60],
		     [61,62,63,64,65,66,j,68,69,70,71,72,73,d,75,76,77,78,79,80],
		     [81,82,83,84,85,86,j,88,89,90,91,92,93,d,95,96,97,98,99,100],
		     [101,b,b,104,c,106,j,108,109,110,111,112,113,d,115,116,117,118,119,120],
		     [d,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,j],
		     [d,142,143,144,145,146,147,148,149,150,e,e,e,e,e,156,157,158,159,j],
		     [d,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,j],
		     [d,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,j],
		     [201,e,e,e,e,e,207,208,209,210,211,212,213,214,215,216,217,218,219,j],
		     [221,222,i,i,i,i,i,228,229,230,231,232,233,f,f,f,f,f,f,240],
		     [h,h,h,h,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260],
		     [261,262,263,g,265,266,267,268,269,270,271,i,i,i,i,i,277,278,h,280],
		     [f,282,283,g,285,286,287,288,289,290,291,292,293,294,295,296,297,298,h,300],
		     [f,302,303,g,305,306,307,308,309,310,311,312,313,314,315,316,317,318,h,320],
		     [f,322,323,g,325,326,327,328,329,330,331,332,333,334,335,336,337,338,h,340],
		     [f,342,343,g,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360],
		     [f,362,363,g,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380],
		     [f,382,383,g,385,386,387,388,389,390,391,g,g,g,g,g,g,g,399,400]]).

			 					 
tablero(1,20,20,10, [[a,2,3,4,5,6,j,8,9,10,11,12,13,14,15,16,17,a,a,a],
		     [a,22,23,24,25,26,j,28,29,30,31,32,33,c,b,b,37,38,39,40],
		     [a,42,43,44,45,46,j,48,49,50,51,52,53,d,55,56,57,58,59,60],
		     [61,62,63,64,65,66,j,68,69,70,71,72,73,d,75,76,77,78,79,80],
		     [81,82,83,84,85,86,j,88,89,90,91,92,93,d,95,96,97,98,99,100],
		     [101,b,b,104,c,106,j,108,109,110,111,112,113,d,115,116,117,118,119,120],
		     [d,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,j],
		     [d,142,143,144,145,146,147,148,149,150,e,e,e,e,e,156,157,158,159,j],
		     [d,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,j],
		     [d,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,j],
		     [201,e,e,e,e,e,207,208,209,210,211,212,213,214,215,216,217,218,219,j],
		     [221,222,i,i,i,i,i,228,229,230,231,232,233,f,f,f,f,f,f,240],
		     [h,h,h,h,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260],
		     [261,262,263,g,265,266,267,268,269,270,271,i,i,i,i,i,277,278,h,280],
		     [f,282,283,g,285,286,287,288,289,290,291,292,293,294,295,296,297,298,h,300],
		     [f,302,303,g,305,306,307,308,309,310,311,312,313,314,315,316,317,318,h,320],
		     [f,322,323,g,325,326,327,328,329,330,331,332,333,334,335,336,337,338,h,340],
		     [f,342,343,g,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360],
		     [f,362,363,g,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380],
		     [f,382,383,g,385,386,387,388,389,390,391,g,g,g,g,g,g,g,400,400]]). %Tablero incorrecto por la numeraciOn, falta el 399.

					 
tablero(2,20,20,10, [[a,k,k,k,5,6,j,8,9,10,11,12,13,14,15,16,17,a,a,a], %Tablero incorrecto, posee barcos k.
		     [a,22,23,24,25,26,j,28,29,30,31,32,33,c,b,b,37,38,39,40],
		     [a,42,43,44,45,46,j,48,49,50,51,52,53,d,55,56,57,58,59,60],
		     [61,62,63,64,65,66,j,68,69,70,71,72,73,d,75,76,77,78,79,80],
		     [81,82,83,84,85,86,j,88,89,90,91,92,93,d,95,96,97,98,99,100],
		     [101,b,b,104,c,106,j,108,109,110,111,112,113,d,115,116,117,118,119,120],
		     [d,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,j],
		     [d,142,143,144,145,146,147,148,149,150,e,e,e,e,e,156,157,158,159,j],
		     [d,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,j],
		     [d,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,j],
		     [201,e,e,e,e,e,207,208,209,210,211,212,213,214,215,216,217,218,219,j],
		     [221,222,i,i,i,i,i,228,229,230,231,232,233,f,f,f,f,f,f,240],
		     [h,h,h,h,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260],
		     [261,262,263,g,265,266,267,268,269,270,271,i,i,i,i,i,277,278,h,280],
		     [f,282,283,g,285,286,287,288,289,290,291,292,293,294,295,296,297,298,h,300],
		     [f,302,303,g,305,306,307,308,309,310,311,312,313,314,315,316,317,318,h,320],
		     [f,322,323,g,325,326,327,328,329,330,331,332,333,334,335,336,337,338,h,340],
		     [f,342,343,g,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360],
		     [f,362,363,g,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380],
		     [f,382,383,g,385,386,387,388,389,390,391,g,g,g,g,g,g,g,399,400]]).


%%FUNCION CREATEBOARD
createBoard(N,M,NumShips,BOARD):- %Predicado que crea Tablero.
    dimensiones(N,M), %Pregunta por las dimensiones, por si corresponden a los que existen en nuestra base de conocimientos
    cBarcos(NumShips,N,M,Y), %obtiene Y, que corresponde a la cantidad de tableros segun las dimension y entregarlo de forma aleatoria 
    X is random(Y), %X es el tipo de tablero, obtenido de forma aleatoria
    tablero(X,N,M,NumShips,BOARD). %Entrega un tablero BOARD, segun las dimensiones ingresadas y la cantidad de barcos.

%%FUNCION CHECKBOARD
checkBoard(BOARD):- 
    largo(BOARD,N), %Obtiene la cantidad de filas que posee el tablero
    obtener(0,BOARD,FILA1), % obtiene una fila, para contar la cantidad de elementos (COLUMNAS)
    largo(FILA1,M),%obtiene la cantidad de columnas que posee el tablero.
    MAUX is N * M, %MAUX es la cantidad total de elementos que posee el tablero de NxM
    verificarMatriz(BOARD,N,M,MAUX). %funcion que encapsula todas las verificaciones que realiza el predicado CheckBoard.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Funciones que ayudan el funcionamiento de checkBOARD%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Verificadores para checkBoard
%verifica que el largo del tablero sea el que corresponda, en este caso igual a la cantidad
%de filas.
largo(LISTA,LARGO):- my_length(LISTA,0,LARGO).
my_length([], L, L). %caso base de la recursiOn
my_length([_|Xs], N, L):-
          N1 is N + 1,
          my_length(Xs, N1, L).  %llamado recursivo

%verifica que las posiciones en la matriz posean la representaciOn dada, se recorre del ultimo elemento hasta el primero.
verificarCeldas(_,0,_). %caso base, cuando se han recorrido todos las filas.
verificarCeldas(LISTA,M,MAUX):-
    M1 is M-1, %actualiza la busqueda, para obtener la siguiente fila
	obtener(M1,LISTA,CONT), %Se obtiene el elmento en la posicion M1 de la Lista y
    %es almacenada en CONT
	celdaTablero(MAUX,CONT), %se consulta si
    MAUX1 is MAUX-1,
	verificarCeldas(LISTA,M1,MAUX1). %LLamado recursivo

verificarMatriz(_,0,_,_).
verificarMatriz(BOARD,N,M,MAUX):-
	N1 is N-1,
	obtener(N1,BOARD,LISTAFILA),
	verificarCeldas(LISTAFILA,M,MAUX),
    MAUX2 is MAUX-M,
	verificarMatriz(BOARD,N1,M,MAUX2).

buscar(X,[X|_],0).
buscar(X,[_|T],Pos):- buscar(X,T,Pos2), Pos is Pos2+1.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FUNCION PLAY
play(BOARD,Ship,Posiciones):-
    mi_length(NPosiciones,Posiciones), 0 is mod(NPosiciones,2),
    obtener(1,BOARD,FILAS),
    mi_length(N,FILAS), mi_length(M,BOARD),
    barcosJugador(N,M,Ship), %Verifica que el barco ingresado pertenezca al jugador.
    playAUX(BOARD,Posiciones,NPosiciones,0,1,M).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Funcionalidades que ayudan al correcto funcionamiento de play.
isPositive(A):- %Predicado que permite verificar si un numero es positivo
    abs(A,X),%se aplica el absoluto a un numero
    A is X.%si el absoluto de ese numero es el mismo numero, entonces es positivo (Incluye al cero).
	
playAUX(_,_,0,_,_,_). %Caso base. Cuando ya no quedan posiciones.
playAUX(BOARD,Posiciones,Nposiciones,X,Y,M):-
    obtener(X,Posiciones,Pos1), obtener(Y,Posiciones,Pos2),
    M2 is M/2,Pos2AUX is Pos2-M2,isPositive(Pos2AUX), %La mitad del tablero, sirve para asegurarse que el usuario ataque en la mitad que le corresponda
    obtenerM(Pos1,Pos2,BOARD,ELEM), letraBarco(ELEM), %obtiene el elemento en las posicion (POS1,POS2). y consulta si es un barco
    X1 is X+2, Y1 is Y+2, Nposiciones1 is Nposiciones-2, %Se obtienen las nuevas posiciones y se quitan las que ya se han recorrido
    playAUX(BOARD,Posiciones,Nposiciones1,X1,Y1,M). %llamado recursivo.


mi_length(0,[]). %Largi de una lista. Caso base
mi_length(L, [_|Xs]) :-
    mi_length(Z,Xs),
    L is Z+1.



obtener(0,[L|_],CONT):- CONT = L.
obtener(P,[_|C],CONT):- P1 is P-1, obtener(P1,C,CONT).
%funcion para obtener un elemento de una matriz (Listas de Listas).
obtenerM(0,Pos2,[L|_],ELEM):- obtener(Pos2,L, ELEM).%CONT = L.
obtenerM(Pos1,Pos2,[H|C],ELEM):- obtener(Pos1,[H|C],ELEM2), obtener(Pos2,ELEM2,ELEM).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%FUNCIONES EXTRA: PARA IMPRIMIR UN TABLERO 
imprimirBarco(ELEM):-
    letraBarco(ELEM),write(ELEM),write('|'); %Si es un  barco se imprime junto a un separador 
    letraABCDario(ELEM),write(ELEM),write('|');
	write(' '),write('|'). %Si no es un barco (NUMERACION) Se imprime un espacio en blanco

imprimirAUX(_,M,M).
imprimirAUX(LISTA,ACUM,M):- %Se encarga de recorrer todas las columnas de la fila entregada
    obtener(ACUM,LISTA,ELEM),
    imprimirBarco(ELEM),
    ACUM1 is ACUM + 1,
    imprimirAUX(LISTA,ACUM1,M).
    
imprimir(_,M,M,_).
imprimir(BOARD,M,ACUM,CONT3):- %Recorre el tablero entregando las listas a imprimir AUX
	obtener(ACUM,BOARD,FILA),
    ACUM1 is ACUM+1,
    write('|'),
    imprimirAUX(FILA,0,M),
	write('\n'),
	imprimir(BOARD,M,ACUM1,CONT3).

boardToString(Board, BoardStr):- %Predicado que permite imprimir por pantalla el tablero
	largo(Board,M),
    write('\n'),
	imprimir(Board,M,0,BoardStr),
	write('\n').


getScore(Board,BoardScr):- %Predicado que permite obtener el puntaje de un tablero
    largo(Board,M),
	recorrerTablero(Board,M,0,0,BoardScr).
	
sumarSCORE(SCORE1,SCORE2,SCOREOUT):-
    SCOREOUT is SCORE1 + SCORE2.

puntajeAUX(ELEM,SCORE,SCOREAUX):-
	barcoDANHADO(ELEM),scoreDanhado(SCORE,SCOREAUX);
	barcoHUNDIDO(ELEM),scoreHundido(SCORE,SCOREAUX);
    sumarSCORE(0,SCORE,SCOREAUX).

	
scoreHundido(SCORE,SCOREAUX):- %Si es una X, suma 400.
	SCOREAUX is SCORE + 400.
scoreDanhado(SCORE,SCOREAUX):- %Si es una O, suma 100.
	SCOREAUX is SCORE + 100.	


scoreAUX(_,N,N,_,_). %caso base, cuando se han recorrido todas las filas
scoreAUX(LISTA,ACUM,N,SCORE,SCOREAUX):- 
    obtener(ACUM,LISTA,ELEM),
    largo(LISTA,N),
    puntajeAUX(ELEM,SCORE,SCOREAUX2),
    ACUM1 is ACUM + 1,
    scoreAUX(LISTA,ACUM1,N,SCORE,SCOREAUX2), %llamado recursivo
	sumarSCORE(SCORE,SCOREAUX2,SCOREAUX). %suma cada puntaje obtenido
    
    
recorrerTablero(_,M,M,_,_). %caso base
recorrerTablero(BOARD,M,ACUM,SCORE,SCOREAUX):- %Se encarga de recorrer el tablero columna a columna
	obtener(ACUM,BOARD,FILA),
    ACUM1 is ACUM+1,
    scoreAUX(FILA,0,M,SCORE,SCOREAUX),
	recorrerTablero(BOARD,M,ACUM1,SCORE,SCOREAUX). %llamado recursivo
