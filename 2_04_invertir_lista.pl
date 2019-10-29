/*
invertir(+Lista, -Resultado)
  es cierto si Resultado unifica con una lista
  que contiene los elementos de Lista en orden
  inverso.
*/

invertir([],[]).                 % P(n0)
invertir([Cab|Resto], R2):-      % P(n-1) -> P(n)  
   invertir(Resto, R),
   append(R, [Cab], R2).
