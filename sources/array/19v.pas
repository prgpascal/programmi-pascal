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

(*Esercizio 19*)
PROGRAM cara;
uses crt;
CONST 
max=100;
TYPE
vettore=ARRAY [1..max] OF char;
VAR
v:vettore;
n:integer;
i:integer;
trov:boolean;
risp:char;

BEGIN
repeat
repeat
write('Quante lettere si vogliono inserire(max ',max,')?: ');
readln(n);
if (n<=0) or (n>max)
	then 
		writeln('Il numero deve essere compreso fra 1 e ',max);
UNTIL (n>0) and (n<max);
FOR i:=1 TO n DO 
begin
write('Inserire la parola ',i,' di ',n,': ');
readln(v[i]);
end;

trov:=false;
for i:=1 to n-3 do
begin
if (v[i]='c')and(v[i+1]='a')and(v[i+2]='r')and(v[i+3]='a')
then
begin
writeln('La sequenza CARA e'' stata trovata tra la posizione ',i,' e ',i+3);
trov:=true;
end
end;
if not trov
then 
begin
writeln('Non e'' stata trovata la sequnza CARA');
end;
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.