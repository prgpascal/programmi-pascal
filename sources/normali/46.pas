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

{Esercizio 46}
PROGRAM espressione;
uses crt;
const
A=10;
B=15;
VAR
X:integer;
risp:char;

procedure inserimento_valore;
begin
Clrscr;
write('Qual e'' il valore di X ?: ');
readln(X);
end; {inserimento_valore}

function risult:real;
begin
risult:=(A*(X*X))+(B*X);
end; {calcolo}

procedure video;
begin
writeln(' ');
writeln('Il risultato dell''espressione A*(X*X)+B*X e'': ',risult:6:2);
writeln(' ');
write('Vuoi continuare(s/n)?: ');
readln(risp);
end;

begin {main}
repeat
inserimento_valore;
risult;
video;
until risp='n';
end. {main}