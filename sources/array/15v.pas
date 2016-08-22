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

(*Esercizio 15*)
PROGRAM stipendi;
uses crt;
CONST 
max=100;
TYPE
vettore=ARRAY [1..max] OF integer;
vettore2=array [1..max] of real;
VAR
v:vettore;
v2:vettore2;
n:integer;
i:integer;
magg:integer;
somma:integer;
risp:char;

BEGIN
repeat
repeat
write('Quanti sono gli stipendi(max ',max,')?: ');
readln(n);
if (n<=0) or (n>max)
	then 
		writeln('Il numero deve essere compreso fra 1 e ',max);
UNTIL (n>0) and (n<max);
FOR i:=1 TO n DO 
begin
write('Inserire lo stipendio ',i,' di ',n,': ');
readln(v[i]);
end;
magg:=v[1];
somma:=0;
for i:=1 to n do
begin
somma:=somma+v[i];
v2[i]:=v[i]+(v[i]*10/100);
if v[i]>magg
then
	magg:=v[i];
end;
writeln('L''elemento massimo che e'' stato trovato nel vettore e'': ',magg:6);
writeln('La media degli stipendi e'': ',somma/n:7:2);
writeln('Gli stipendi incrementati del 10 per cento sono: ');
for i:=1 to n do 
begin
writeln(v2[i]:6:2);
end;
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.