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

(*Esercizio 7*)
PROGRAM giorno_1985;
VAR
	giorno:integer;
	ngiorn:integer;
	risp:char;
BEGIN
REPEAT
	write('Inserire un numero compreso fra 1 e 365: ');
	readln(giorno);
		ngiorn:=giorno mod 7;
	IF ngiorn=1
	THEN
		writeln('Il giorno ',giorno,' dell''anno 1985, corrispondeva a martedi''')
	ELSE
	IF ngiorn=2
	THEN
		writeln('Il giorno ',giorno,' dell''anno 1985, corrispondeva a mercoledi''')
	ELSE
	IF ngiorn=3
	THEN
		writeln('Il giorno ',giorno,' dell''anno 1985, corrispondeva a giovedi''')
	ELSE
	IF ngiorn=4
	THEN
		writeln('Il giorno ',giorno,' dell''anno 1985, corrispondeva a venerdi''')
	ELSE
	IF ngiorn=5
	THEN
		writeln('Il giorno ',giorno,' dell''anno 1985, corrispondeva a sabato')
	ELSE
	IF ngiorn=6
	THEN
		writeln('Il giorno ',giorno,' dell''anno 1985, corrispondeva a domenica')
	ELSE
	IF ngiorn=0
	THEN
		writeln('Il giorno ',giorno,' dell''anno 1985, corrispondeva a lunedi''');
		write('Vuoi continuare (s/n)?: ');
		readln(risp);
UNTIL risp='n';
END.