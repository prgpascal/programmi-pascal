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
PROGRAM contatore_e_somma;
VAR
	numero:real;
	contator:integer;
	risp:char;
	totnum:real;
	BEGIN
	contator:=0;
	totnum:=0;
	REPEAT
		write('Inserire un numero: ');
		readln(numero);
		contator:=contator+1;
		write('Vuoi continuare (s/n)?: ');
		readln(risp);
		totnum:=totnum+numero;
		UNTIL risp='n';
		writeln('Hai inserito ',contator,' numeri');
		writeln('La somma dei numeri inseriti e'': ',totnum:8:0);
		END.