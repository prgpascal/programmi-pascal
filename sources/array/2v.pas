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

(*Esercizio 2*)
PROGRAM doppio_vettore;
CONST 
max=100;
TYPE
vettore=ARRAY [1..max] OF integer;
VAR
v:vettore;
v2:vettore;
n:integer;
i:integer;
sommpari:integer;
media:real;
divid:integer;
a:integer;
risp:char;
BEGIN
repeat
repeat
write('Quanti numeri vuoi inserire(max ',max,')?: ');
readln(n);
if (n<=0) or (n>max)
	then 
		writeln('Il numero deve essere compreso fra 1 e ',max);
UNTIL (n>0) and (n<max);
FOR i:=1 TO n DO 
begin
write('Inserire il numero ',i,' di ',n,': ');
readln(v[i]);
end;
i:=1;
divid:=0;
sommpari:=0;
for i:=1 to n do 
begin
		IF i MOD 2=0  (*se e pari*)
		THEN 
				begin
					divid:=divid+1;
								sommpari:=sommpari+v[i];
				end
end;
	media:=sommpari/divid;
	writeln('La media matematica degli elementi in posizione pari e'': ',media:7:2);
writeln('Gli elementi dispari sono: ');
a:=1;
for i:=1 to n do 
begin
if (v[i] MOD 2)<>0
THEN
begin
v2[a]:=v[i];
writeln(v2[a]);
a:=a+1;
end;
end;
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.