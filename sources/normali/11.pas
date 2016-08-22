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

{Esercizio 11}
PROGRAM doppio;
VAR
 num1:real;
 dop:real;
 risp:char;
BEGIN
REPEAT
 write('Inserire il numero sul quale calcolero''il doppio: ');
 readln(num1);
  dop:=num1*2;
 writeln('Il doppio di ',num1:8:0, ' e'': ',dop:8:0);
 write('Vuoi continuare (s/n)?: ');
 readln(risp);
UNTIL risp='n';
END.