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

(*Esercizio 6*)
PROGRAM area_rettangolo;
VAR
	a:real;
	b:real;
	c:real;
	h:real;
	x1:real;
	x2:real;
	area:real;
	delta_eq:real;
	base:real;
	risp:char;
BEGIN
REPEAT
	write('Inserire il valore A: ');
	readln(a);
	write('Inserire il valore B: ');
	readln(b);
	write('Inserire il valore C: ');
	readln(c);
	write('Inserire l''altezza: ');
	readln(h);
		delta_eq:=(b*b)-4*a*c;
	IF delta_eq>0
		THEN
			BEGIN
				x1:=(-b+SQRT(delta_eq))/2*a;
				x2:=(-b-SQRT(delta_eq))/2*a;
				base:=x1-X2;
				area:=base*h;
					writeln('L''area del rettangolo e'': ',area:8:2);
			END
		ELSE
			IF delta_eq=0
			THEN
				writeln('Il risultato e'' impossible perche'' i lati non possono essere uguali a zero')
			ELSE
				writeln('Il risultato e'' impossibile perche'' il delta non puo'' essere negativo');
   write('Vuoi continuare (s/n)?: ');
   readln(risp)
UNTIL risp='n';
END.