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

(*Esercizio 34v*)
(*Creare un programma che carichi in un vettore n elementi e visualizzi:
- gli elementi di indice pari
- gli elementi di posizione pari
- la somma di tutti gli elementi*)
PROGRAM esvettore;
CONST
max=100;
TYPE 
vettore=ARRAY [1..max]OF integer;
VAR
v:vettore;
n:integer;
i:integer;
somma:integer;
risp:char;

BEGIN
REPEAT
REPEAT
write('Quanti numeri vuoi inserire(<=',max,')?: ');
readln(n);
IF (n<=0) OR (n>max)
THEN
 writeln('IL numero deve essere compreso fra 1 e ',max);
 UNTIL (n>0) and (n<=max);
 FOR i:=1 TO n DO
 BEGIN
 write('Inserire il numero ',i,' di ',n,': ');
 readln(v[i]);
 end;
 writeln(' ');
 i:=2;
 writeln('Il contenuto del vettore con indici pari e'': ');
 REPEAT
 writeln(v[i]);
 i:=i+2;
 UNTIL i>n;
 writeln(' ');
 writeln('Gli elementi pari sono: ');
 FOR i:=1 TO n DO 
 IF v[i] MOD 2=0
 THEN
 writeln(v[i]);
 writeln(' ');
 somma:=0;
 FOR i:=1 TO n DO
 begin
 somma:=somma+v[i];
 end;
 writeln('La somma degli elementi del vettore e'': ',somma);
 writeln(' ');
 write('Vuoi continuare(s/n)?: ');
 readln(risp)
 UNTIL risp='n'
 end.