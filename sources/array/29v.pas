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

{Es 29v}
PROGRAM multipli;
uses crt;
const MAX=340;
type
vettore=array [1..MAX] of integer;
var 
n1,n2,j:integer;
v:vettore;
risp:char;

procedure caricamento(var n1,n2:integer);
begin
	clrscr;
	repeat
 write('Inserisci il primo numero(max 1000): ');
 readln(n1);
 write('Inserisci il secondo numero(max 1000): ');
 readln(n2);
 until (n1>0)and(n1<=1000)and(n2>0)and(n2<=1000);
end;{caricamento}

procedure creazione_vettore(var v:vettore; n1,n2:integer;var j:integer);
var i:integer;
begin
j:=0;
	for i:=n1 to n2 do
	if i mod 3=0
	then	
	begin
	j:=j+1;
	v[j]:=i
	end;
end;{creazione_vettore}
	
procedure visual(x:vettore;j:integer;var risp:char);
var i:integer;
begin
for i:=1 to j do
writeln(x[i]);
writeln();
write('Vuoi continuare(s/n)?: ');
readln(risp);
risp:=upcase(risp);
end;{visual}

procedure scambio(var n1,n2:integer);
var tmp:integer;
begin
tmp:=n1;
n1:=n2;
n2:=tmp;
end;{scambio}

begin{main}
repeat
	caricamento(n1,n2);
	if n1>n2
	then
	scambio(n1,n2);
	creazione_vettore(v,n1,n2,j);
	writeln();
	writeln('Elenco dei multipli di 3 compresi fra ',n1,' e ',n2,': ');
	visual(v,j,risp);
until risp='N'
end.{main}