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

(*Esercizio 30*)
PROGRAM maggiore;
VAR
	n1:real;
	n2:real;
	n3:real;
	risp:char;
	
BEGIN
REPEAT
	write('Inserire il primo numero: ');
	readln(n1);
	write('Inserire il secondo numero: ');
	readln(n2);
	write('Inserire il terzo numero: ');
	readln(n3);
		IF (n1>n2) and (n1>n3)
		THEN
		begin
			writeln('Il maggiore tra i tre numeri e'': ',n1:8:2);
			write('Vuoi continuare(s/n)?: ');
			readln(risp)
		end
		ELSE
			IF (n2>n1) and (n2>n3)
			THEN
			begin
				writeln('Il maggiore tra i tre numeri e'': ',n2:8:2);
				write('Vuoi continuare(s/n)?: ');
			readln(risp)
			end
			ELSE
			begin
				writeln('Il maggiore tra i tre numeri e'': ',n3:8:2);
				write('Vuoi continuare(s/n)?: ');
			readln(risp)
			end
			until risp='n'
END.