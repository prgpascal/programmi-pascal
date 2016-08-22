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

(*Contare quanti sono i numeri primi fra 1 e n, con n fornito dall'utente*)

PROGRAM numeriprimi;
VAR
 n:integer;
 y:integer;
 primo:boolean;
 contatore:integer;
 divisore:integer;
 risp:char;
BEGIN
REPEAT
 write('Inserire un numero: ');
 readln(n);
 contatore:=0;
For y:=1 TO n DO
BEGIN
divisore:=2;
primo:=TRUE;
WHILE (primo) AND (divisore<y) DO
BEGIN
 IF (y MOD divisore)=0
  then 
  primo:=FALSE;
   divisore:=divisore+1;
END;
IF primo 
 then
 contatore:=contatore+1;
END;
writeln('Il numero complessivo di numeri primi e'': ',contatore);
write('Vuoi continuare(s/n)?: ');
readln(risp)
UNTIL risp='n'
END.