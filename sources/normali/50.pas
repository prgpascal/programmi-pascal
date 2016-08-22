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

{Es 50}
PROGRAM idraulico;
uses crt;
CONST
costo_ora=10.5;
VAR
ore:integer;
costo:integer;
totale:real;
risp:char;

begin
repeat
ClrScr;
write('Quante sono le ore di lavoro complessive?: ');
readln(ore);
write('A quanto ammonta il costo del materiale?: ');
readln(costo);
totale:=(costo+(ore*costo_ora));
if totale<25
then
totale:=25;
writeln('Il totale da pagare e'': ',totale:7:2);
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.