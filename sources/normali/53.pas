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

{Es 53}
program conta_parole;
uses crt;
const max=255;
var
par:string[max];
i,a,cont:integer;
risp:char;

begin
repeat
clrscr;
cont:=0;
write('Inserire una frase: ');
readln(par);
a:=length(par);
if ord(par[1])=32
then cont:=-1;

for i:=1 to a-1 do
if (ord(par[i])=32) and (ord(par[i+1])<>32)
then cont:=cont+1;

writeln('Nella frase inserita ci sono ',cont+1,' parole');
writeln();
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.