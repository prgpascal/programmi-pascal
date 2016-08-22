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

{Es 54}
program prima_parola;
uses crt;
const max=100;
var
par,x:string;
i:integer;
trovato:boolean;

begin
clrscr;
repeat
write('Inserire una frase(max ',max,' caratteri): ');
readln(par)
until (length(par)<=max);
i:=0;
trovato:=false;
repeat
i:=i+1;
if ord(par[i])<>32
then 
begin
insert(par[i],x,i);
trovato:=true;
end;
until (i=max)or((trovato)and(ord(par[i])=32));

writeln('La prima parola inserita e'': ',x);
readln();
end.