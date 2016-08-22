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

(*Esercizio 37*)
PROGRAM esercizio_segni;
VAR
	n1:real;
	n2:real;
	risp:char;
	BEGIN
	REPEAT
	write('Inserire il primo numero: ');
	readln(n1);
	write('Inserire il secondo numero: ');
	readln(n2);
	IF ((n1>=0) and (n2>=0)) or ((n1<=0) and (n2<=0))
	THEN
	begin
	writeln('I due numeri inseriti hanno lo stesso segno');
	write('Vuoi continuare(s/n)?: ');
	readln(risp);
	end
	else
	begin
	writeln('I due numeri inseriti non hanno lo stesso segno');
	write('Vuoi continuare(s/n)?: ');
	readln(risp)
	end
	UNTIL risp='n';
	end.