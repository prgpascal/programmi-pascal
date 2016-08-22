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

(*Esercizio 34*)
PROGRAM quadratograficopieno;
uses crt;
VAR
	x:integer;
	y:integer;
	lungh:integer;
	i:integer;
	f:integer;
	risp:char;
BEGIN
REPEAT
	write('Inserire un valore di X minore di 124: ');
	readln(x);
	write('Inserire un valore di Y minore di 38: ');
	readln(y);
	write('Di che lunghezza e'' il quadrato?: ');
	readln(lungh);
	ClrScr;
	FOR f:=1 TO lungh DO 
	BEGIN
	For i:=1 TO lungh Do 
	begin
	gotoxy(x,y);
	writeln('*');
	x:=x+1;
	end;
	y:=y+1;
	x:=x-lungh;
	end;
	write('Vuoi continuare(s/n)?: ');
	readln(risp)
	UNTIL risp='n'
	END.