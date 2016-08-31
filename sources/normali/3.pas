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

{Esercizio 3}
PROGRAM radicequadrata;
VAR
 num1:real;
 radq:real;
 risp:char;
BEGIN
REPEAT
 write('Inserire il numero sul quale devo calcolare la radice quadrata: ');
 readln(num1);
 radq:=SQRT(num1);
 writeln('La radice quadrata del numero e'': ', radq:5:8);
 write('Vuoi continuare (s/n)?: ');
 readln(risp);
UNTIL risp='n';
END.