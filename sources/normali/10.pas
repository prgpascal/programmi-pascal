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

(*Esercizio 10*)
PROGRAM fibonacci;
VAR
n:real;
n1:real;
n2:real;
risp:char;
BEGIN
REPEAT
n:=0;
n1:=1;
n2:=0;
WHILE n<500 DO 
BEGIN
n:=n1+n2;
n2:=n1;
n1:=n;
END;
writeln('Il primo termine della successione di fibonacci che supera 500 e'' ',n:5:0);
write('Vuoi continuare(s/n)?: ');
			readln(risp)
			UNTIL risp='n'
			end.