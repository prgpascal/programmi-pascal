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

(*Esercizio 17*)
PROGRAM punto_medio;
VAR
	xp1:real;
	xp2:real;
	yp1:real;
	yp2:real;
	xpm:real;
	ypm:real;
	risp:char;
BEGIN
REPEAT
	writeln('Inserire le coordinate del primo punto:');
	write('x: ');
	readln(xp1);
	write('y: ');
	readln(yp1);
	writeln('Inserire le coordinate del secondo punto:');
	write('x: ');
	readln(xp2);
	write('y: ');
	readln(yp2);
		xpm:=(xp1+xp2)/2;
		ypm:=(yp1+yp2)/2;
	writeln('Le coordinate del punto medio sono: ',xpm:4:2,' ; ',ypm:4:2);
	write('Vuoi continuare(s/n)?: ');
	readln(risp)
	UNTIL risp='n'
END.