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

(*Esercizio 26*)
PROGRAM incremento;
VAR
	a1:real;
	a2:real;
	diff:real;
	increm:real;
	risp:char;
BEGIN
REPEAT
	write('Inserire la popolazione del primo anno: ');
	readln(a1);
	write('Inserire la popolazione del secondo anno: ');
	readln(a2);
		diff:=a2-a1;
		increm:=(100*diff)/a1;
	writeln('L''incremento della popolazione e'' del ',increm:4:2,' %');
		write('Vuoi continuare(s/n)?: ');
		readln(risp)
		UNTIL risp='n'
END.