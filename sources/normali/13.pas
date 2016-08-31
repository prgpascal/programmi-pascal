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

{Esercizio 13}
PROGRAM cerchio;
CONST
 pi_greco=3.14;
VAR
 rag:real;
 circ:real;
 area:real;
 risp:char;
BEGIN
REPEAT
 write('Inserire il raggio: ');
 readln(rag);
 circ:=2*pi_greco*rag;
 area:=pi_greco*rag*rag;
 writeln('La circonferenza e'': ',circ:8:2);
 writeln('L''area calcolata e'': ',area:8:2);
 write('Vuoi continuare (s/n)?: ');
 readln(risp)
UNTIL risp='n';
END.
