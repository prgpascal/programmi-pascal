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

(*Esercizio 24*)
PROGRAM immobile;
CONST
	aliq=5;
VAR
	imponib:real;
	imposta:real;
	risp:char;
	
BEGIN
REPEAT
	write('Inserire il prezzo dell''immobile: ');
	readln(imponib);
		IF imponib>0
		THEN
			BEGIN
		imposta:=imponib/100*aliq;
	writeln('L''imposta da pagare su questo immobile e'': ',imposta:8:2);
			END
		ELSE
		writeln('Non è possibile calcolare l''imposta per questo valore');
		write('Vuoi continuare(s/n)?: ');
		readln(risp)
		UNTIL risp='n'
END.