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

{Es 55}
program totocalcio;
uses crt;
const max=13;
type
matrice=array[1..max,1..max]of char;
var
m:matrice;
n,j:integer;

procedure carica_vince(var m:matrice);
var i:integer;
begin
 writeln('Inserire la colonna vincente: ');
 for i:=1 to max do
  repeat
 write('Inserire il risultato della riga ',i,': ');
 readln(m[i,1]);
 m[i,1]:=upcase(m[i,1]);
  until (m[i,1]='X')or(m[i,1]='1')or(m[i,1]='2');
end;{carica_vince}

procedure caricamento_giocate(var m:matrice;j:integer);
var i:integer;
begin
 writeln('Caricamento dei risultati della giocata ',j-1,': ');
 for i:=1 to max do
  repeat
 write('Inserire il risultato della giocata per la partita ',i,' : ');
 readln(m[i,j]);
  m[i,j]:=upcase(m[i,j]);
  until (m[i,j]='X')or(m[i,j]='1')or(m[i,j]='2');
 writeln();
end;

procedure confronto(m:matrice);
var i,cont:integer;
begin
cont:=0;
for i:=1 to max do
if m[i,1]=m[i,j]
then 
cont:=cont+1;
writeln('Per la giocata ',j-1,' sono esatti ',cont,' risultati');
end;{confronto}

begin{main}
	clrscr;
	carica_vince(m);
	writeln();
	write('Quante sono le giocate?: ');
	readln(n);
	for j:=2 to n+1 do
	caricamento_giocate(m,j);
	writeln();
	for j:=2 to n+1 do
	confronto(m);
end.{main}