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

{Esercizio 32}
PROGRAM tavola;
USES crt;
TYPE matrice=array[0..100,0..100] of integer;
VAR
 n:integer;
 i:integer;
 j:integer;
 antani:matrice;
 risp:char;

BEGIN 
repeat
 clrscr;
 write('Inserire il numero di righe e colonne: ');
 readln(n);
 writeln();
 writeln('TAVOLA PITAGORICA ',n,'x',n,':');
 writeln();
 {creo la prima riga}
 for i:=0 to n do
   antani[0,i]:=i;
 
 {creo la prima colonna}
 for i:=0 to n do
   antani[i,0]:=i;

 {creo il resto della matrice}
 for i:=1 to n do
   for j:=1 to n do
     begin
       antani[i,j]:=antani[i,0]*antani[0,j];
     end;
   
 {visualizzo la matrice}  
 for i:=0 to n do
   begin
     for j:=0 to n-1 do
        write(antani[i,j],' ');
     writeln(antani[i,n]);
   end;

 writeln();
 write('Vuoi continuare(s/n)?: ');
 readln(risp);
 risp:=upcase(risp);
until risp='N';

END.{main}