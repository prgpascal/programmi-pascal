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

{Es 26v}
PROGRAM conversione;
uses crt;
const
max=8;
TYPE
vettore=array[1..max]of integer;
var
v:vettore;
n:integer;
i:integer;
numero:integer;
risp:char;

procedure caricamento;
begin
repeat
write('Inserire il numero da convertire(>0 e <255): ');
readln(n);
until (n<255) and (n>0);
end; {caricamento}

procedure conversione;
begin
numero:=n;
repeat
i:=i+1;
n:=numero mod 2;
v[i]:=n;
numero:=numero div 2;
until numero=0;
end; {conversione}

procedure visual;
begin
clrscr;
writeln('Visualizzazzione del codice binario: ');
repeat
write(v[i]);
i:=i-1;
until i=0;
writeln(' ');
writeln('Vuoi continuare(s/n)?: ');
readln(risp);
end; {visual}

begin{main}
repeat
caricamento;
conversione;
visual;
until risp='n';
end.