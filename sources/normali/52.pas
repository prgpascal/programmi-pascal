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

{Es 52}
PROGRAM palindromo;
uses crt;
var
par:string;
l,i,k:integer;
ok:boolean;
risp:char;

begin
repeat
Clrscr;
write('Inserire una parola: ');
readln(par);
l:=length(par);
ok:=true;
i:=0;
k:=l+1;

repeat
i:=i+1;
k:=k-1;
if par[i]<>par[k]
then ok:=false;

until (not ok)or (i=(l div 2));

if ok
then writeln('La parola e'' palindroma')
else writeln('La parola non e'' palindroma');
writeln();
write('Vuoi continuare(s/n)?: ');
readln(risp);
until risp='n'
end.