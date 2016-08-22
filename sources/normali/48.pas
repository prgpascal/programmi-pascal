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

{Es 48}
PROGRAM ordine_crescente;
uses crt;
const
x=2;
y=3;
VAR
n1:integer;
n2:integer;
tmp:integer;
risp:char;

begin
repeat
ClrScr;
write('Inserire il primo numero: ');
readln(n1);
write('Inserire il secondo numero: ');
readln(n2);
if n1>n2 
then
begin
tmp:=n1;
n1:=n2;
n2:=tmp;
end;
ClrScr;
gotoxy(25,4);
writeln('Numeri in ordine crescente: ');
gotoxy(20,5);
writeln('-------------------------------------');
gotoxy(39,6);
writeln(n1);
gotoxy(39,7);
writeln(n2);
writeln(' ');
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.