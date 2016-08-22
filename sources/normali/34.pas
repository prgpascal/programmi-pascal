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
PROGRAM contatore;
VAR
	numero:real;
	contator:integer;
	risp:char;
	BEGIN
	contator:=0;
	REPEAT
		write('Inserire un numero: ');
		readln(numero);
		contator:=contator+1;
		write('Vuoi continuare (s/n)?: ');
		readln(risp);
		UNTIL risp='n';
		writeln('Hai inserito ',contator,' numeri');
		END.