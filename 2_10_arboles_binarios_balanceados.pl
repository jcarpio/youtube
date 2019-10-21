/*
balanceado(+Arbol_Binario)
  es cierto si, para todo nodo, la diferencia entre
  la altura del Hijo Izquierda y la altura del 
  Hijo derecha es como máximo 1 en valor absoluto.
*/

balanceado(nil).
balanceado(a(_, HI, HD)):-
  altura(HI, AI),
  altura(HD, AD),
  Dif is AI-AD,
  Abs_dif is abs(Dif),
  Abs_dif =< 1,
  balanceado(HI),
  balanceado(HD).

/* altura(+Arbol_binario, -Altura)
      es cierto si Altura unifica con la
	  altura de Arbol_binario.
*/  
altura(nil,0).
altura(a(_, HI, HD), R):-
  altura(HI, AI),
  altura(HD, AD),
  A is max(AI, AD),
  R is A+1.
  
arbol1(a(1,a(2,nil,nil),a(3,nil,nil))).  
arbol2(a(1,a(2,a(3,nil,nil),a(4,nil,nil)),a(5,nil,nil))).
arbol3(a(1,a(2,a(3,nil,nil),a(4,nil,a(5,nil,nil))),nil)).
arbol4(a(1,a(2,a(3,a(4,nil,nil), nil),nil), a(5,nil,a(6,nil,a(7,nil,nil))))).
