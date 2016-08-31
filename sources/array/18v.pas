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

(*Esercizio 18*)
PROGRAM agenzia;
CONST 
max=100;
TYPE
vettore=ARRAY [1..max]OF integer;
VAR
v:vettore;
i:integer;
n1:integer;
n2:integer;
a:integer;
n:integer;
risp:char;

BEGIN
repeat
repeat
write('Quanti sono i premi dell''agenzia(max ',max,')?: ');
readln(n);
if (n<=0) or (n>max)
	then 
		writeln('Il numero deve essere compreso fra 1 e ',max);
UNTIL (n>0) and (n<max);

FOR i:=1 TO n DO 
begin
write('Inserire il premio ',i,' di ',n,': ');
readln(v[i]);
end;
write('Quali sono i due valori di riferimento?: ');
readln(n1);
readln(n2);
if n1>n2
then 
begin
a:=n1;
n1:=n2;
n2:=a;
end;
writeln('I premi che sono compresi fra ',n1,' e ', n2,' sono: ');
for i:=1 to n do
begin
if (v[i]>=n1) and (v[i]<=n2)
then
writeln(v[i]);
end;
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.

