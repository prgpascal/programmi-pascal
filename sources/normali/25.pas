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

(*Esercizio 25*)
PROGRAM vendite;
VAR
	VG:real;
	VF:real;
	VM:real;
	vend_trim:real;
	risp:char;
BEGIN
REPEAT
	write('Inserire l''ammontare delle vendite di gennaio: ');
	readln(VG);
	write('Inserire l''ammontare delle vendite di febbraio:  ');
	readln(VF);
	write('Inserire l''ammontare delle vendite di marzo: ');
	readln(VM);
		vend_trim:=VG+VF+VM;
	writeln('Il totale delle vendite del primo trimestre e'': ',vend_trim:8:2);
		write('Vuoi continuare(s/n)?: ');
		readln(risp)
		UNTIL risp='n'
END.