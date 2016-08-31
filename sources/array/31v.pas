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

{Es 31v}
program tabelle;
uses crt;
const max=20;
type
	calcio=record
	 squadra:string;
	 punti:integer;
	end;
var 
 seriea:array[1..max]of calcio;
 serieb:array[1..max]of calcio;
 n:integer;
 
procedure caricamento;
var i:integer;
begin
writeln('Squadre di serie A');
 for i:=1 to n do
 	begin
 		writeln('Inserire i dati relativi alla squadra ',i,' di ',n,': ');
 		write('Nome squadra: ');
 		readln(seriea[i].squadra);
 		write('Punti: ');
 		readln(seriea[i].punti);
 		writeln();
 	end;
	writeln('Squadre di serie B');
		for i:=1 to n do
 		begin
 		 writeln('Inserire i dati relativi alla squadra ',i,' di ',n,': ');
 			write('Nome squadra: ');
 			readln(serieb[i].squadra);
 			write('Punti: ');
 			readln(serieb[i].punti);
 			writeln();
 		end;
end;
 	
procedure visual;
var i:integer;
begin
 writeln('Serie A');
	 for i:=1 to n do
	  writeln(seriea[i].squadra,', ',seriea[i].punti,' punti');
 writeln('Serie B');
 for i:=1 to n do
	  writeln(serieb[i].squadra,', ',serieb[i].punti,' punti');
end;{visual}
  
procedure stampa;
var i,x:integer;
begin
writeln();
 writeln('Le squadre retrocesse dalla serie A alla B sono: ');
 x:=n-3;
 for i:=x to n do
  writeln(seriea[i].squadra,', ',seriea[i].punti,' punti');
 writeln();
  writeln('Le squadre retrocesse dalla serie B alla C sono: ');
 for i:=x to n do
  writeln(serieb[i].squadra,', ',serieb[i].punti,' punti');
 writeln(); 
  writeln('Le squadre promosse dalla serie B alla A sono: ');
 for i:=1 to 4 do
  writeln(serieb[i].squadra,', ',serieb[i].punti,' punti');
end;

begin
clrscr;
 repeat
 write('Quante sono le squadre?: ');
 readln(n);
 until n>=4;
 caricamento;
 clrscr;
 visual;
 stampa;
end.