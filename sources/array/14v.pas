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

(*Esercizio 14*)
PROGRAM azienda;
uses crt;
CONST 
max=100;
TYPE
vettore=ARRAY [1..max] OF integer;
VAR
v:vettore;
n:integer;
i:integer;
cod:integer;
risp:char;

BEGIN
repeat
repeat
write('Quante codici si vogliono inserire(max ',max,')?: ');
readln(n);
if (n<=0) or (n>max)
	then 
		writeln('Il numero deve essere compreso fra 1 e ',max);
UNTIL (n>0) and (n<max);
FOR i:=1 TO n DO 
begin
write('Inserire il codice ',i,' di ',n,': ');
readln(v[i]);
v[i]:=v[i]+20000000;
end;

write('A quale anno si vuol far riferimento?(oltre il 2000): ');
readln(cod);
cod:=cod*10000;
writeln('L''elenco dei prodotti dopo questo anno sono: ');
for i:=1 to n do
begin
if v[i]>cod
then 
writeln(v[i]);
end;
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.

