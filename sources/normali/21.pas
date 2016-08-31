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

(*Esercizio 31*)
PROGRAM equazione;
VAR
	a:real;
	b:real;
	c:real;
	delta:real;
	x1:real;
	x2:real;
	risp:char;
BEGIN
REPEAT
	write('Inserire a: ');
	readln(a);
	write('Inserire b: ');
	readln(b);
	write('Inserire c: ');
	readln(c);
		delta:=b*b-4*a*c;
IF a=0
THEN
begin
	writeln('L''equazione e'' impossibile');
	write('Vuoi continuare(s/n)?: ');
			readln(risp)
			end
ELSE
	 IF delta<0  
		THEN 
		begin
			writeln('L''equazione non ha soluzioni');
			write('Vuoi continuare(s/n)?: ');
			readln(risp)
			end
		ELSE
		IF delta=0
			THEN
				BEGIN
				x1:=-b/2*a;
				x2:=-b/2*a;
					writeln('L''equazione ha solo una soluzione: ',x1:8:2);
					write('Vuoi continuare(s/n)?: ');
			readln(risp)
				END
		ELSE
			BEGIN
			x1:=(-b+SQRT(delta))/2*a;
			x1:=(-b-SQRT(delta))/2*a;
				writeln('Le soluzioni sono: ',x1:8:2,' e ',x2:8:2);
				write('Vuoi continuare(s/n)?: ');
			readln(risp)
			END	
UNTIL risp='n'
END.
