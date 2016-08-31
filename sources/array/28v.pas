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

{Es 28v}
PROGRAM es_minimo;
uses crt;
TYPE
vettore=ARRAY[1..5]of integer;
VAR
v:vettore;
risp:char;

PROCEDURE caricamentovett(var x:vettore);
var
i:integer;
begin
for i:=1 to 5 do
begin
write('Inserire il numero ',i,' di 5: ');
readln(x[i]);
end;
end;{caricamentovett}

PROCEDURE visualizzaminimo(x:vettore);
var
i:integer;
min:integer;
begin
min:=x[1];
writeln();
writeln('Visualizzazione:');
for i:=2 to 5 do
if x[i]<min
then
min:=x[i];
writeln('Il valore minimo e'': ',min);
end;{visualizzaminimo}

PROCEDURE visualizzavettore(x:vettore);
var
i:integer;
begin
for i:=1 to 5 do
writeln('Numero ',i,' di 5: ',x[i]);
write('Vuoi continuare(s/n)?: ');
readln(risp);
end;

BEGIN {main}
repeat
Clrscr;
caricamentovett(v);
visualizzaminimo(v);
visualizzavettore(v);
until risp='n'
end.{main}