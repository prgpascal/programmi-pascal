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

{Es 27v}
PROGRAM numeri_pos_neg;
uses crt;
type
vettore=array[1..100]of integer;
var
n:integer;
v:vettore;
i:integer;
pos:integer;
totpos:integer;
neg:integer;
totneg:integer;
risp:char;

PROCEDURE caricamento;
BEGIN
	Clrscr;
	write('Quanti numeri vuoi inserire?: ');
	readln(n);
			FOR i:=1 to n do
			BEGIN
				write('Inserire il numero ',i,' di ',n,': ');
				readln(v[i]);
			END;
END; {caricamento}

PROCEDURE calcolo;
BEGIN
FOR i:=1 to n do
	IF v[i]>0 
			THEN
				BEGIN
				pos:=pos+1;
				totpos:=totpos+v[i];
				END
			ELSE
				BEGIN
				neg:=neg+1;
				totneg:=totneg+v[i];
				END;
END; {calcolo}

PROCEDURE visual;
	BEGIN
	clrscr;
	writeln('Numeri positivi: ',pos);
	writeln('Numeri negativi: ',neg);
	writeln('Totale somma dei numeri positivi: ',totpos);
	writeln('Totale somma dei numeri negativi: ',totneg);
	i:=n;
		REPEAT
			writeln(v[i]);
			i:=i-1;
		UNTIL i=0;
		write('Vuoi continuare(s/n)?: ');
		readln(risp);
END; {visual}

BEGIN{main}
repeat
	caricamento;
	calcolo;
	visual;
until risp='n'
END.