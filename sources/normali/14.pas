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

{Esercizio 14}
PROGRAM variabili;
VAR
 n1:real;
 n2:real;
 ntemp:real;
 risp:char;
BEGIN
REPEAT
 write('Inserire il primo numero A: ');
 readln(n1);
 write('Inserire il secondo numero B: ');
 readln(n2);
   ntemp:=n1;
   n1:=n2;
   n2:=ntemp;
 writeln('Il primo numero A e'': ',n1:8:0);
 writeln('Il secondo numero B e'': ',n2:8:0);
 write('Vuoi continuare(s/n)?: ');
 readln(risp);
 UNTIL risp='n';
END.