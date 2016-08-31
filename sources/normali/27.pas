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

PROGRAM divisione;
VAR
n1:integer;
n2:integer;
q:integer;
r:integer;
risp:char;
BEGIN
REPEAT
write('Inserire il primo numero: ');
readln(n1);
write('Inserire il secondo numero: ');
readln(n2);
q:=n1 DIV n2;
r:=n1 MOD n2;
writeln('Il risultato e'': ',n1,'/',n2,'=',q,' Col resto di ',r);
write('Vuoi continuare(s/n)?: ');
readln(risp)
until risp='n'
END.