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

{30v}
PROGRAM fibonacci;
uses crt;
const max=3000;
type
vettore=array[1..100]of integer;
VAR 
v:vettore;

PROCEDURE successione(var v:vettore);
var i,primo,secondo,tot:integer;
begin
primo:=0;
secondo:=1;
writeln(primo);
writeln(secondo);
i:=0;
repeat
tot:=primo+secondo;
primo:=secondo;
secondo:=tot;
if tot<max
then
begin
i:=i+1;
v[i]:=tot;
writeln(v[i]);
end;
until tot>max
end;{successione}

begin{main}
  clrscr;
  successione(v);
end.{main}