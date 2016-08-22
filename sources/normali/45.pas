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

{Esercizio 45}
PROGRAM tassa;
uses crt;
VAR
X:integer;
mq:real;
Y:real;
P:real;
risp:char;

procedure inserimento_valori;
begin
Clrscr;
write('Quanti sono i mq dell''immobile?: ');
readln(mq);
write('A quanto ammonta la tassa per mq da pagare?: ');
readln(X);
write('A quanto ammonta la tassa fissa ?: ');
readln(Y);
write('A quanto ammonta la percentuale P da applicare sul totale?: ');
readln(P);
end; {inserimento_valore}

function risult:real;
begin
risult:=((X*mq)+Y)+(((X*mq)+Y)*P/100);
end; {calcolo}

procedure video;
begin
writeln(' ');
writeln('Le tasse da pagare su questo immobile ammontano a: ',risult:6:2);
writeln(' ');
write('Vuoi continuare(s/n)?: ');
readln(risp);
end;

begin {main}
repeat
inserimento_valori;
risult;
video;
until risp='n';
end. {main}