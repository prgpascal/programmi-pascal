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

(*Esercizio 35*)
PROGRAM quadratografico;
Uses crt;
VAR
	x:integer;
	y:integer;
	lungh:integer;
	i:integer;
BEGIN

repeat
	write('Inserire un valore di x minore di 124: ');
	readln(x);
	write('Inserire un valore di y minore di 38: ');
	readln(y);
	write('Di che lunghezza e'' il quadrato?: ');
	readln(lungh);
	until (x<124) and (y<38);
	clrscr;
	gotoxy(x,y);
	writeln('*');
	FOR i:=1 to lungh DO 
	begin
	gotoxy(x+i-1,y);
	writeln('*');
	end;
	For i:=1 to lungh Do 
	begin
	gotoxy(x,y+i-1);
	write('*');
	end;
	For i:=1 to lungh Do 
	begin
	gotoxy(x+i-1,y+lungh-1);
	writeln('*');
	end;
	for i:=1 to lungh do
	begin
	gotoxy(x+lungh-1,y+i-1);
	write('*');
	end;
	end.