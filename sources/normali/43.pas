(*
 * Copyright (C) 2008 Riccardo Leschiutta
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *)

{Esercizio 43}
{Se tutti e due sono >di 10 fai la somma
se almeno uno è > di 10 fai la divisione
se tutti e due sono pari trova il maggiore
se almeno uno è pari fai la moltiplicazione
se  sono entrambi dispari fai la somma}
PROGRAM numeriab;
uses crt;
VAR
 num1:integer;
 num2:integer;
 somma:real;
 divis:real;
 molt:real;
 risp:char;
BEGIN
repeat
ClrScr;
writeln('Questo programma effettuera'' delle operazioni per due numeri secondo queste condizioni:');
writeln('Se tutti e due sono > di 10 fa la somma');
writeln('Se almeno uno e'' > di 10 fa la divisione');
writeln('Se tutti e due sono pari trova il maggiore');
writeln('Se almeno uno è pari fa la moltiplicazione');
writeln('Se sono entrambi dispari fa la somma');
writeln(' ');
 write('Inserire il primo numero: ');
 readln(num1);
 write('Inserire il secondo numero: ');
 readln(num2);
 
 IF (num1>10)and(num2>10) {entrambi maggiori di 10}
  THEN
   BEGIN
      somma:=num1+num2;
    writeln('La somma dei due numeri e'': ',somma:8:2);
   END
  ELSE
   IF ((num1)or(num2))>10 {solo uno è maggiore di 10}
    THEN
     BEGIN
       divis:=num1/num2;
      writeln('La divisione dei due numeri e'': ',divis:8:2)
     END
    ELSE
       IF ((num1 mod 2)=0)and((num2 mod 2)=0) {entrambi pari}
        THEN
	  							IF (num1)>(num2)
           THEN
             writeln('Il primo numero e'' il massimo tra i due numeri')
           ELSE
             writeln('Il secondo numero e'' il massimo tra i due numeri')
        ELSE
          IF (((num1 mod 2)=0)or((num2 mod 2)=0)) {almeno uno e pari}
           THEN
            BEGIN
               molt:=num1*num2;
             writeln('La moltiplicazione tra i due numeri e'': ',molt:8:2);
            END
           ELSE {ENTRAMBI DISPARI}
             BEGIN
                 somma:=num1+num2;
               writeln('La somma dei due numeri e'': ',somma:8:2);
             END;
     write('Vuoi continuare(s/n)?: ');
     readln(risp);
until risp='n'
        
END. {FINE}