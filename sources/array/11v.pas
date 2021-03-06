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

(*Esercizio 11*)
PROGRAM eta;
CONST 
max=100;
TYPE
vettore=ARRAY [1..max] OF integer;
nome=ARRAY [1..max]OF string;
VAR
mag:vettore;
v:vettore;
no:nome;
n:integer;
i:integer;
a:integer;
risp:char;
BEGIN
repeat
repeat
write('Quante eta'' si vogliono inserire(max ',max,')?: ');
readln(n);
if (n<=0) or (n>max)
	then 
		writeln('Il numero deve essere compreso fra 1 e ',max);
UNTIL (n>0) and (n<max);

FOR i:=1 TO n DO 
begin
write('Inserire il nome della persona ',i,' di ',n,': ');
readln(no[i]);
write('Inserire l''eta'' di ',no[i],': ');
readln(v[i]);
writeln(' ');
end;
writeln(' ');
writeln('Le persone maggiorenni sono: ');
a:=1;
for i:=1 to n do
if v[i]>=18 
then 
begin
mag[a]:=v[i];
writeln(no[i],' ha ',mag[a],' anni');
writeln('E'' stato trovato alla posizione ',i,' del vettore');
a:=a+1;
end;
writeln(' ');
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.