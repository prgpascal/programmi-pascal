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

(*Dato un numero stabilire se è primo o no*)
PROGRAM numeroprimo;
VAR
 n:integer;
 y:integer;
 primo:boolean;
 risp:char;
BEGIN
REPEAT
 write('Inserire un numero: ');
 readln(n);
 primo:=TRUE;
FOR y:=2 TO n-1 DO
BEGIN
IF (n MOD y)=0
then 
 primo:=FALSE;
end;
IF primo
THEN
 writeln('E'' primo')
ELSE
 writeln('Non e'' primo');
write('Vuoi continuare(s/n)?: ');
readln(risp)
 until risp='n'
END.
