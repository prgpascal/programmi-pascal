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

(*Es 39*)
PROGRAM somma;
VAR
A,B:Integer;
risp:char;
BEGIN
REPEAT
Write('Dammi un numero: ');
Readln(A);
write('Dammi un altro numero: ');
readln(B);
Writeln('La somma di ',A,' e ',B,' e'' ',A+B);
write('Vuoi continuare(s/n)?: ');
readln(risp)
until risp='n';
END.